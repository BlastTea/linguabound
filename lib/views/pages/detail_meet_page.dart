part of 'pages.dart';

class DetailMeetPage extends StatelessWidget {
  const DetailMeetPage({
    super.key,
    required this.meet,
  });

  final Meet meet;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => NavigationHelper.back(),
            icon: const Icon(Icons.chevron_left),
          ),
          centerTitle: true,
          title: const Text('Detail Meet'),
          foregroundColor: kColorWhite,
          backgroundColor: kColorSurface,
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: [
            const SizedBox(height: 16.0),
            Text('Anda melakukan meet dengan', style: Theme.of(context).textTheme.titleSmall),
            Text('${meet.namaLengkap ?? '-'}, ${meet.gelar ?? ''}', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16.0),
            Transform.translate(
              offset: const Offset(-30.0, 0.0),
              child: Image.asset('assets/images/question daily learning goal.png'),
            ),
            const SizedBox(height: 16.0),
            Text('Topik', style: Theme.of(context).textTheme.headlineMedium),
            Text(meet.topik ?? '-', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 16.0),
            Text('Deskripsi', style: Theme.of(context).textTheme.headlineMedium),
            Text(meet.deskripsi ?? '-', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: 16.0),
            Text('Cek Materi', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 16.0),
            MyFilledButton.tonal(
              onPressed: meet.materi != null
                  ? () async {
                      showLoadingDialog();

                      try {
                        final bytes = await ApiHelper.getFile(uri: Uri.parse(meet.materi!));

                        Directory directory = await getApplicationCacheDirectory();

                        String filePath = path.joinAll([directory.path, 'materials', path.basename(meet.materi!)]);

                        String parentPath = path.dirname(filePath);
                        String fileName = path.basenameWithoutExtension(filePath);
                        String extension = path.extension(filePath);

                        String getExtension() => extension.isNotEmpty ? extension : '';

                        File file = File(path.joinAll([parentPath, '$fileName${getExtension()}']));

                        int fileIteration = 1;
                        while (await file.exists()) {
                          file = File(path.joinAll([parentPath, '$fileName (${fileIteration++})${getExtension()}']));
                        }

                        if (!await file.exists()) await file.create(recursive: true);
                        await file.writeAsBytes(bytes);

                        OpenFile.open(file.path).then((value) {
                          switch (value.type) {
                            case ResultType.error:
                              showErrorDialog(value.message);
                            case ResultType.fileNotFound:
                              NavigationHelper.clearSnackBars();
                              NavigationHelper.showSnackBar(SnackBar(content: Text(Language.getInstance().getValue('File not found')!)));
                            case ResultType.noAppToOpen:
                              NavigationHelper.clearSnackBars();
                              NavigationHelper.showSnackBar(SnackBar(content: Text(Language.getInstance().getValue('No application was found to open the file')!)));
                            case ResultType.permissionDenied:
                              NavigationHelper.clearSnackBars();
                              NavigationHelper.showSnackBar(SnackBar(content: Text(Language.getInstance().getValue('Permission not granted')!)));
                            default:
                          }
                        });

                        throw 'NOTHING';
                      } catch (e) {
                        NavigationHelper.back();
                        if (e != 'NOTHING') {
                          ApiHelper.handleError(e);
                          return;
                        }
                      }
                    }
                  : null,
              icon: SvgPicture.asset('assets/svgs/chest.svg'),
              padding: const EdgeInsets.all(16.0),
              borderColor: kColorBorder,
              minHorizontalPadding: 16.0,
              pressedBottomBorderWidth: 0.0,
              bottomBorderOnly: true,
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width - 32.0 - 100.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Materi.pdf',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: kColorBorder),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      'Ini adalah materi yang diberikan oleh mentor, silahkan diakses',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(color: kColorBorder),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            MyFilledButton(
              onPressed: meet.link != null ? () => launchUrl(Uri.parse(meet.link!)) : null,
              child: const Text('Gabung'),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      );
}
