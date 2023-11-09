class AbwaabEvents {
  // Language Screen
  static const String LanguageScreenEn = 'LanguageScreen_En';
  static const String LanguageScreenAr = 'LanguageScreen_Ar';

  /// OnBoarding Screens
  // (OnBoarding 1st Screen)
  static const String Onboarding1ScreenPrev = 'Onboarding1Screen_Prev';
  static const String Onboarding1ScreenNext = 'Onboarding1Screen_Next';
  // (OnBoarding 2nd Screen)
  static const String Onboarding2ScreenPrev = 'Onboarding2Screen_Prev';
  static const String Onboarding2ScreenNext = 'Onboarding2Screen_Next';
  // (OnBoarding 3rd Screen)
  static const String Onboarding3ScreenPrev = 'Onboarding3Screen_Prev';
  static const String Onboarding3ScreenNext = 'Onboarding3Screen_Next';
  // (Welcome Screen)
  static const String Onboarding4ScreenPrev = 'Onboarding4Screen_Prev';
  static const String Onboarding4ScreenSignup = 'Onboarding4Screen_Signup';
  static const String Onboarding4ScreenLogin = 'Onboarding4Screen_Login';

  // Signup By Phone Screen
  static const String PhoneSignupScreenGetOTP = 'SignupScreen_GetOTP';
  static const String PhoneSignupScreenFacebook = 'SignupScreen_Facebook';
  static const String PhoneSignupScreenGoogle = 'SignupScreen_Google';
  static const String PhoneSignupScreenEmail = 'SignupScreen_Email';
  static const String PhoneSignupScreenPhone = 'SignupScreen_Phone';
  static const String PhoneSignupScreenContinueEmail =
      'SignupScreen_ContinueEmail';
  static const String PhoneSignupScreenLogin = 'SignupScreen_Login';

  // Signup by Email Screen
  static const String EmailSignupScreenFacebook = 'SignupScreen_Facebook';
  static const String EmailSignupScreenGoogle = 'SignupScreen_Google';
  static const String EmailSignupScreenEmail = 'SignupScreen_Email';
  static const String EmailSignupScreenPhone = 'SignupScreen_Phone';
  static const String EmailSignupScreenContinueEmail =
      'SignupScreen_ContinueEmail';

  // Signup Country Screen (Country name is dynamic)
  static const String SignupCountryScreenCountryName =
      'SignupCountryScreen_CountryName';
  static const String SignupCountryScreenNext = 'SignupCountryScreen_Next';
  static const String ContinueSignup = 'continue_signup';
  // Signup Grade Screen (grade is dynamic)
  static const String SignupGradeScreenGrade = 'SignupGradeScreen_Grade';
  static const String SignupGradeScreenNext = 'SignupGradeScreen_Next';

  // Signup Social Info Screen (name, social name, phone number is dynamic)
  static const String SignupSocialInfoScreenMainScreen =
      'SignupSocialInfoScreen_MainScreen';

  // Main Screen (Subject is dynamic)
  static const String MainScreenAskATABanner = 'MainScreen_AskATA_Banner';
  static const String MainScreenAskATANavBar = 'MainScreen_AskATA_NavBar';
  static const String MainScreenNotificationsNavBar =
      'MainScreen_Notifications_NavBar';
  static const String MainScreenDrawer_NavBar = 'MainScreen_Drawer_NavBar';
  static const String MainScreenSubject = 'MainScreen_Subject';

  // Login Screen
  static const String LoginScreenGetOTP = 'LoginScreen_GetOTP';
  static const String LoginScreenFacebook = 'LoginScreen_Facebook';
  static const String LoginScreenGoogle = 'LoginScreen_Google';
  static const String LoginScreenEmail = 'LoginScreen_Email';
  static const String LoginScreenPhone = 'LoginScreen_Phone';
  static const String LoginScreenContinueEmail = 'LoginScreen_ContinueEmail';
  static const String LoginScreenSignup = 'LoginScreen_Signup';

  // Email OTP Screen
  static const String EmailOTPScreenNext = 'EmailOTPScreen_Next';
  static const String EmailOTPScreenResendOTP = 'OTPScreen_resendOTP';

  // Phone OTP Screen
  static const String OTPScreenConfirmOTP = 'OTPScreen_confirmOTP';
  static const String SMSOTPScreenNext = 'SMSOTPScreen_Next';
  static const String PhoneOTPScreenResendOTP = 'OTPScreen_resendOTP';

  // Ask ATA Screen
  static const String AskATAScreenCamera = 'AskATAScreen_Camera';
  static const String AskATAScreenKeyboard = 'AskATAScreen_Keyboard';
  static const String AskATAScreenNext = 'AskATAScreen_Next';

  // Ask ATA Screen Submit Question
  static const String AskATAScreenSubmitQAsk = 'AskATAScreen_SubmitQ_Ask';

  // Ask ATA Screen Subject (subject id is needed)
  static const String AskATAScreenSubjectSubjectName =
      'AskATAScreen_Subject_SubjectName';

  // Ask ATA Screen Requesting Tutor
  static const String AskATAScreenRequestingTutorExit =
      'AskATAScreen_RequestingTutor_Exit';

  // Settings Screen (Selected language value)
  static const String SettingsCurriculum = 'settings_curriculum';
  static const String SettingsPassword = 'settings_password';
  static const String SettingsEmail = 'settings_email';
  static const String SettingsPhone = 'settings_phone';
  static const String MyBillings = 'my_billings';
  static const String CancelEditEmail = 'cancel_edit_email';
  static const String SettingsChangeEmail = 'Settings_change_email';
  static const String Cancel_EditCurriculum = 'cancel_edit_curriculum';
  static const String SettingsChangeCurriculum = 'Settings_change_curriculum';
  static const String CancelAdd_Phone = 'cancel_Add_Phone';
  static const String SettingsAddPhone = 'Settings_add_phone';
  static const String SettingsVerifyPhone = 'Settings_verify_phone';
  static const String CancelAddPassword = 'cancel_add_password';
  static const String SettingsAddPassword = 'Settings_add_password';
  static const String CancelChangePassword = 'cancel__change_password';
  static const String SettingsChangePassword = 'Settings_change_password';
  static const String SettingsSaveAddGender = 'Settings_save_add_gender';
  static const String SettingsCancelAddGender = 'Settings_cancel_add_gender';
  static const String SettingsVerifyChangePhone =
      'Settings_verify_change_phone';
  static const String SettingsCancelChangePhone =
      'Settings_cancel_change_phone';
  static const String SettingsSaveLanguageLanguageSelection =
      'Settings_save_language_language selection';

  // Profile Screen & Edit Profile Screen
  static const String ProfileScreenEditProfileInfo =
      'ProfileScreen_editProfileInfo';
  static const String ProfileScreenViewProfilePic =
      'ProfileScreen_viewProfilePic';
  static const String EditProfileScreenEditProfilePic =
      'EditProfileScreen_editProfilePic';
  static const String EditProfileScreenUploadProfilePic =
      'EditProfileScreen_uploadProfilePic';
  static const String EditProfileScreenSaveProfilePic =
      'EditProfileScreen_SaveProfilePic';
  static const String EditProfileScreenDBSaveChanges =
      'EditProfileScreen_DB_SaveChanges';

  // Discussion Board Part Screen (parameters: lesson_Id, post_Id)
  static const String lessonScreenDBAddReply = 'lessonScreen_DB_addReply';
  static const String lessonScreenDBNumReplies = 'lessonScreen_DB_numReplies';
  static const String lessonScreenDBPostReply = 'lessonScreen_DB_postReply';
  static const String lessonScreenDBLoadMoreReplies =
      'lessonScreen_DB_loadMoreReplies';
  static const String lessonScreenDBLoadMoreComments =
      'lessonScreen_DB_loadMoreComments';
  static const String lessonScreenDBAddComment = 'lessonScreen_DB_addComment';
  static const String subscribeNowLessonScreen = 'go_subscribe';
  static const String subscribeNowAssessment = 'go_subscribe';
  // Collections Screens
  static const String QuizScreenAddToCollection = 'QuizScreen_addToCollection';
  static const String LessonScreenAddToCollection =
      'LessonScreen_addToCollection';
  static const String QuestionScreenAddToCollection =
      'QuestionScreen_addToCollection';
  static const String CollectionsScreenNewCollectionBtn =
      'CollectionsScreen_newCollectionBtn';
  static const String QuizScreenCreateNewCollectionButton =
      'QuizScreen_createNewCollectionButton';
  static const String lessonScreenCreateNewCollectionButton =
      'lessonScreen_createNewCollectionButton';
  static const String QuestionScreenCreateNewCollectionButton =
      'QuestionScreen_createNewCollectionButton';
  static const String CollectionsScreenCreateNewCollectionButton =
      'CollectionsScreen_createNewCollectionButton';
  static const String QuizScreenConfirmNewCollectionBtn =
      'QuizScreen_ConfirmNewCollectionBtn';
  static const String lessonScreenConfirmNewCollectionBtn =
      'lessonScreen_ConfirmNewCollectionBtn';
  static const String QuestionScreenConfirmNewCollectionBtn =
      'QuestionScreen_ConfirmNewCollectionBtn';
  static const String CollectionsScreenDeleteCollection =
      'CollectionsScreen_deleteCollection';
  static const String CollectionsScreenEditCollection =
      'CollectionsScreen_editCollection';
  static const String CollectionScreenConfirmEditCollection =
      'CollectionScreen_confirmEditCollection';
  static const String CollectionsScreenChangeSorting =
      'CollectionsScreen_changeSorting';
  static const String CollectionScreenOpenBookmarkedLesson =
      'CollectionScreen_OpenBookmarkedLesson';
  static const String CollectionScreenOpenBookmarkedQuestion =
      'CollectionScreen_OpenBookmarkedQuestion';
  static const String BookmarkedLessonScreenShowModelAnswer =
      'BookmarkedLessonScreen_showModelAnswer';
  static const String BookmarkedLessonScreenHideModelAnswer =
      'BookmarkedLessonScreen_hideModelAnswer';
  static const String DrawerScreenOpenCollections =
      'DrawerScreen_OpenCollections';
  static const String CollectionsScreenDeleteBookmarkedLesson =
      'CollectionsScreen_deleteBookmarkedLesson';
  static const String CollectionsScreenDeleteBookmarkedQuestion =
      'CollectionsScreen_deleteBookmarkedQuestion';
  static const String CollectionsScreenDeleteBookmarkedlesson =
      'CollectionsScreen_DeleteBkmrkedlesson';
  static const String CollectionsScreenDeleteBookmarkedquestion =
      'CollectionsScreen_DeleteBkmrkedquestion';
  static const String LessonScreenAddLessonToCollection =
      'LessonScreen_addLessonToCollection';
  static const String LessonScreenRemoveFromCollection =
      'LessonScreen_removeFrmCollection';
  static const String QuestionScreenAddQuestionToCollection =
      'QuestionScreen_addQuestionToCollection';
  static const String QuestionScreenRemoveFromCollection =
      'QuestionScreen_removeFrmCollection';
  static const String QuizScreenAddQuestionToCollection =
      'QuizScreen_addQuestionToCollection';
  static const String QuizScreenRemoveFrmCollection =
      'QuizScreen_removeFrmCollection';

  // Practice Screens
  static const String practiceProgressPageStartPractice =
      'practiceProgressPage_startPractice';
  static const String practiceProgressPageContinuePractice =
      'practiceProgressPage_continuePractice';
  static const String practiceProgressPageResetPractice =
      'practiceProgressPage_resetPractice';
  static const String practiceProgressPageApproveReset =
      'practiceProgressPage_approveReset';
  static const String DrawerScreenPractice = 'DrawerScreen_Practice';
  static const String startPracticeScreenStartPractice =
      'startPracticeScreen_startPractice';
  static const String startPracticeScreenChooseSubject =
      'startPracticeScreen_chooseSubject';
  static const String startPracticeScreenChooseTopic =
      'startPracticeScreen_chooseTopic';
  static const String PracticeQuestionScreenSubmitAnswer =
      'PracticeQuestionScreen_submitAnswer';
  static const String PracticeQuestionScreenNextQuestion =
      'PracticeQuestionScreen_nextQuestion';
  static const String PracticeQuestionScreenApproveEndSession =
      'PracticeQuestionScreen_approveEndSession';
  static const String PracticeRoundCompletedScreenShareProgress =
      'PracticeRoundCompletedScreen_shareProgress';
  static const String SubjectLessonsScreenStartPractice =
      'SubjectLessonsScreen_startPractice';

  // Notification Screen
  static const String NavBarNotifications = 'NavBar_Notifications';
  static const String NotificationsScreenClickNotification =
      'NotificationsScreen_clickNotification';

  // ZenDesk Screen
  static const String DrawerScreenZendesk = 'DrawerScreen_Zendesk';

  // Lesson Screen
  static const String LessonScreenShare = 'LessonScreen_Share';
  static const String LessonScreenLike = 'LessonScreen_Like';
  static const String LessonScreenDislike = 'LessonScreen_dislike';
  static const String LessonScreenSubmitFeedback =
      'LessonScreen_submitfeedback';
  static const String LessonScreenLessonList = 'LessonScreen_LessonList';
  static const String LessonScreenNext = 'LessonScreenn_Next';
  static const String LessonScreenPrevious = 'LessonScreen_Previous';

  // Lessons List
  static const String LessonListSelectLesson = 'Lessonlist_SelectLesson';

  // Test Cover Screen
  static const String TestCoverScreenTakeTest = 'TestCoverScreen_Take_test';
  static const String TestCoverScreenSkipTest = 'TestCoverScreen_Skip_test';

  // Test Question Screen
  static const String ExitTest = 'Exit_test';
  static const String StayOntest = 'Stay_ontest';
  static const String ContinueTestTater = 'Continue_test_later';
  static const String SubmitTest = 'Submit_test';

  // Test Result Screen
  static const String ShareTest = 'Share_test';
  static const String retakeTest = 'retake_test';
  static const String ContinueLearning = 'Continue_learning';

  // Quiz Learning Path Screen
  static const String SkipQuiz = 'Skip_quiz';

  // Quiz Assessment Journey Screen
  static const String ExitQuiz = 'Exit_quize';

  // Subject Screen
  static const String SubjectScreenLearningPath = 'SubjectScreen_Learning_Path';
  static const String SubjectScreenAssessmentJourney =
      'SubjectScreen_Assessment_journey';

  // Banners On Main Screen
  static const String MainScreenLeagueBannerNext =
      'MainScreen_LeagueBanner_Next';

  /// League

  //League Home Screen
  static const String LeagueHomeScreenExitToMainScreen =
      'LeagueHomeScreen_ExitToMainScreen';
  static const String LeagueHomeScreenLeagueLeaderboard =
      'LeagueHomeScreen_LeagueLeaderboard';
  static const String LeagueHomeScreenProfileScreenUserID =
      'LeagueHomeScreen_ProfileScreen';
  static const String LeagueHomeScreenStartMatchSubjectIDUserID =
      'LeagueHomeScreen_StartMatchSubject';

  //League Search Screen
  static const String LeagueSearchScreenExitToLeagueHomeScreen =
      'LeagueSearchScreen_ExitToLeagueHomeScreen';
  static const String LeagueSearchScreen_ExitToLeagueHomeScreen_Confirm =
      'LeagueSearchScreen_ExitToLeagueHomeScreen_Confirm';
  static const String LeagueSearchScreen_ExitToLeagueHomeScreen_Cancel =
      'LeagueSearchScreen_ExitToLeagueHomeScreen_Cancel';

  //League Question Screen (User Id is needed)
  static const String LeagueQuestionScreen1 = 'LeagueQuestionScreen1_Answer';
  static const String LeagueQuestionScreen2 = 'LeagueQuestionScreen2_Answer';
  static const String LeagueQuestionScreen3 = 'LeagueQuestionScreen3_Answer';
  static const String LeagueQuestionScreen4 = 'LeagueQuestionScreen4_Answer';
  static const String LeagueQuestionScreen5 = 'LeagueQuestionScreen5_Answer';
  static const String LeagueQuestionScreen6 = 'LeagueQuestionScreen6_Answer';

  //LeagueWonResultsScreen (User Id is needed)
  static const String LeagueWonResultsScreenExitToLeagueHomeScreen =
      'LeagueWonResultsScreen_ExitToLeagueHomeScreen_';
  static const String LeagueWonResultsScreenPlayAgain =
      'LeagueWonResultsScreen_PlayAgain';
  static const String LeagueWonResultsScreenNewSubject =
      'LeagueWonResultsScreen_NewSubject';

  //LeagueTieResultsScreen (User Id is needed)
  static const String LeagueTieResultsScreenExitToLeagueHomeScreen =
      'LeagueTieResultsScreen_ExitToLeagueHomeScreen';
  static const String LeagueTieResultsScreenPlayAgain =
      'LeagueTieResultsScreen_PlayAgain';
  static const String LeagueTieResultsScreenNewSubject =
      'LeagueTieResultsScreen_NewSubject';

  //LeagueLostResultsScreen
  static const String LeagueLostResultsScreen_ExitToLeagueHomeScreen =
      'LeagueLostResultsScreen_ExitToLeagueHomeScreen';
  static const String LeagueLostResultsScreen_PlayAgain =
      'LeagueLostResultsScreen_PlayAgain';
  static const String LeagueLostResultsScreen_NewSubject =
      'LeagueLostResultsScreen_NewSubject';

  /// LeagueLeaderboardScreen
  static const String LeagueLeaderboardScreenProfileScreen =
      'LeagueLeaderboardScreen_ProfileScreen';
  static const String LeagueLeaderboardScreenHideTop20 =
      'LeagueLeaderboardScreen_HideTop20';

  /// CTAs from League to MT Screen
  static const String LeagueLostResultToMTScreen =
      'LeagueLostResultsScreen_AskATAScreen_Loop';
  static const String LeagueTieResultToMTScreen =
      'LeagueTieResultsScreen_AskATAScreen_Loop';
  static const String LeagueWontResultToMTScreen =
      'LeagueWonResultsScreen_AskATAScreen_Loop';

  /// CTAs from Practice to League Screen
  static const String PracticeCompletedToLeagueScreen =
      'PracticeRoundCompletedScreen_LeagueHomeScreen_Loop';

  /// CTAs from Test Result to MT Screen
  static const String TestResultToMTScreen =
      'TestResultScreen_AskATAScreen_Loop';

  /// CTAs from MT to Test Screen
  static const String MTToTestScreen = 'AskATACompleteScreen_test_Loop';

  static const String MTToLessonScreen = 'NoTutorOnlineScreen_lesson_Loop';

  /*
  * START OF MT (LIT) Events
  * */

  /// LIT Home Screen
  static const String LitTakePhoto = 'select_take_photo';
  static const String LitTypeQuestion = 'select_type_question';
  static const String LitViewSubscriptionDetails =
      'view_lit_subscription_details';

  /// LIT Type Question Screen
  static const String LitConnectWithTutor = 'connect_with_tutor';
  static const String LitPreviewQuestion = 'preview_question';

  /// LIT Connecting with Tutor
  static const String LitEndCall = 'end_call';

  /// Lit No Tutors Online -> (NTO)
  static const String LitNTOClosePopUp = 'close_popup';
  static const String LitNTOGoToLesson = 'go_lessons';

  /// Lit Tutors are busy
  static const String LitTimeOut = 'try_again';

  /// Lit Session Screen
  static const String LitSessionMuteMic = 'mute_microphone';
  static const String LitSessionUnMuteMic = 'unmute_microphone';
  static const String LitSessionTurnOnCamera = 'turn_on_camera';
  static const String LitSessionTurnOffCamera = 'turn_off_camera';
  static const String LitSessionFlipCamera = 'flip_camera_orientation';
  static const String LitSessionOpenChat = 'open_chat';
  static const String LitSessionEndCall = 'end_call';

  /// Lit Student call summary screen
  // for unsubscribed student --> subscribe
  static const String LitSummarySubscribe = 'go_lit_paywall';
  // for subscribed student --> go_test
  static const String LitSummaryGoTest = 'go_test';

  /// Lit select subject screen
  static const String LitSubjectNext = 'next';
  static const String LitSubjectSubscribe = 'go_lit_paywall';

  /// Lit Subscription Screen
  static const String LitSubscriptionActivateSub = 'activate_key';
  static const String LitSubscriptionCallUs = 'call_us';
  static const String GoFacebook = 'go_facebook';
  static const String GoInsta = 'go_instagram';
  static const String GoTiktok = 'go_tiktok';

  /// AR Experiment -- Lesson Screen
  static const String ArExperiment = 'AR_EXPERIMENT';
}
