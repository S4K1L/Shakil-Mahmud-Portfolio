class ExperienceModel {
  final String name;
  final String organization;
  final String date;
  final String position;
  final String link;

  ExperienceModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.position,
    required this.link,
  });
}

List<ExperienceModel> certificateList = [
  ExperienceModel(
    name: 'Freelancer',
    organization: 'Fiverr',
    date: 'April 2023',
    position: 'Flutter Developer',
    link:  'https://www.fiverr.com/shakil_app_dev',
  ),
  ExperienceModel(
    name: 'Application Developer',
    organization: 'Abangcp Agency, Malaysia',
    date: 'April 2024',
    position: 'Flutter Developer . Bug Fix',
    link:  '',
  ),
  ExperienceModel(
    name: 'Application Developer',
    organization: 'Final Year Project Developing',
    date: '2023',
    position: 'Flutter Developer',
    link:  '',
  ),
];
