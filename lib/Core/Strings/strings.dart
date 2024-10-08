class StringManager {
  static const String appName = 'Docdoc';
  static const String logo = 'assets/svgs/logo.svg';
  static const String onboardingBackground =
      'assets/svgs/onboarding_background.svg';
  static const String onboardingDoctorImage =
      'assets/images/onboarding_doctor.png';
  static const String signupHeaderText =
      'We\'re excited to have you back, can\'t wait to\n see what you\'ve been up to since you last\n logged in.';
  static const String createAcoountText =
      'Sign up now and start exploring all that our\n app has to offer. We\'re excited to welcome\n you to our community!';
  static const String onboardingTextBody = 'Best Doctor \nAppointment App';

  static const String onboardingTextFooter =
      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.';

// Api Url
  static const String baseUrl = 'https://vcare.integration25.com/api/';
// Authentication
  static const String loginUrl = 'auth/login'; //post
  static const String registerUrl = 'auth/register'; //post
  static const String logoutUrl = 'auth/logout'; //post
// Home
  static const String homeUrl = 'home/index'; //get

// Appointments
  static const String appointmentsUrl = 'appointments/index'; //get
  static const String storeAppointmentUrl = 'appointments/store'; //post

//Doctors
  static const String doctorsUrl = 'doctors/index'; //get
  static const String doctorsSearchUrl = 'doctor/doctor-search?name=Finn'; //get

// Specializtions
  static const String specializationsUrl = 'specializations/index'; //get
  static const String specializationsShowUrl = 'specialization/show/1'; //get
}
