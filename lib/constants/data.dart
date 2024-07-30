import 'package:OncoAid/constants/icons.dart';

List homeUserItems = [
  {'Title': 'Schedule', 'Icon': IconsConstants.calendar},
  {'Title': 'Med Aware', 'Icon': IconsConstants.medAware},
  {'Title': 'Support', 'Icon': IconsConstants.supportGroups},
  {'Title': 'Beaters', 'Icon': IconsConstants.cancerBeaters}
];
String doctorPicture =
    'https://img.freepik.com/free-photo/woman-doctor-wearing-lab-coat-with-stethoscope-isolated_1303-29791.jpg';
String userPicture =
    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg';

List notifications = [
  {
    'Text': "Your appointment with Dr. Abrar is confirmed.",
    'Time': "4 minutes ago",
    'Icon': IconsConstants.notifyAppoint,
  },
  {
    'Text': 'Thank you for your feedback!',
    'Time': '2 days ago',
    'Icon': IconsConstants.notifyReview,
  },
  {
    'Text': 'Hope is the heartbeat that keeps you fighting.',
    'Time': '7 hours ago',
    'Icon': IconsConstants.notifyMotivation
  },
  {
    'Text':
        'Your changes are live! Your profile has been successfully updated.',
    'Time': '34 minutes ago',
    'Icon': IconsConstants.notifyEditProfile
  }
];
