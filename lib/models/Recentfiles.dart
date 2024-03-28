class RecentFile {
  final String? icon, title, date, size;

  RecentFile({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFile(
    icon: "assets/icons/xd_file.svg",
    title: "XD File",
    date: "01-03-2024",
    size: "3.5mb",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: "Document",
    date: "23-03-2024",
    size: "32.5mb",
  ),
  RecentFile(
    icon: "assets/icons/sound_file.svg",
    title: "Sound File",
    date: "21-03-2024",
    size: "3.5mb",
  ),
  RecentFile(
    icon: "assets/icons/media_file.svg",
    title: "Media File",
    date: "23-03-2024",
    size: "2.5gb",
  ),
  RecentFile(
    icon: "assets/icons/excel_file.svg",
    title: "Excel File",
    date: "25-03-2024",
    size: "34.5mb",
  ),
];
