src/main/java/com/mediaplayer/MediaPlayerApplication.java:7: CommentRequired: Class comments are required
src/main/java/com/mediaplayer/MediaPlayerApplication.java:7: UseUtilityClass: This utility class has a non-private constructor
src/main/java/com/mediaplayer/MediaPlayerApplication.java:9: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/MediaPlayerApplication.java:9: MethodArgumentCouldBeFinal: Parameter 'args' is not assigned and could be declared final
src/main/java/com/mediaplayer/controller/CommentController.java:9: UnnecessaryImport: Unused import 'org.springframework.http.ResponseEntity'
src/main/java/com/mediaplayer/controller/CommentController.java:11: UnnecessaryImport: Unused import 'org.springframework.web.bind.annotation.ExceptionHandler'
src/main/java/com/mediaplayer/controller/CommentController.java:15: UnnecessaryImport: Unused import 'org.springframework.web.bind.annotation.PutMapping'
src/main/java/com/mediaplayer/controller/CommentController.java:17: UnnecessaryImport: Unused import 'org.springframework.web.bind.annotation.RequestParam'
src/main/java/com/mediaplayer/controller/CommentController.java:19: UnnecessaryImport: Unused import 'org.springframework.web.method.annotation.MethodArgumentTypeMismatchException'
src/main/java/com/mediaplayer/controller/CommentController.java:22: UnnecessaryImport: Unused import 'com.mediaplayer.service.CommentService'
src/main/java/com/mediaplayer/controller/CommentController.java:25: UnnecessaryImport: Unused import 'jakarta.persistence.EntityManager'
src/main/java/com/mediaplayer/controller/CommentController.java:26: UnnecessaryImport: Unused import 'jakarta.persistence.PersistenceContext'
src/main/java/com/mediaplayer/controller/CommentController.java:30: AtLeastOneConstructor: Each class should declare at least one constructor
src/main/java/com/mediaplayer/controller/CommentController.java:30: CommentRequired: Class comments are required
src/main/java/com/mediaplayer/controller/CommentController.java:32: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/controller/CommentController.java:33: CommentDefaultAccessModifier: Missing commented default access modifier on field 'logger'
src/main/java/com/mediaplayer/controller/CommentController.java:33: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/controller/CommentController.java:36: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/controller/CommentController.java:36: MethodArgumentCouldBeFinal: Parameter 'c' is not assigned and could be declared final
src/main/java/com/mediaplayer/controller/CommentController.java:36: ShortVariable: Avoid variables with short names like c
src/main/java/com/mediaplayer/controller/CommentController.java:38: LocalVariableCouldBeFinal: Local variable 'comment' could be declared final
src/main/java/com/mediaplayer/controller/CommentController.java:38: UnnecessaryLocalBeforeReturn: Consider simply returning the value vs storing it in local variable 'comment'
src/main/java/com/mediaplayer/controller/CommentController.java:45: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/controller/CommentController.java:45: MethodArgumentCouldBeFinal: Parameter 'videoId' is not assigned and could be declared final
src/main/java/com/mediaplayer/controller/CommentController.java:51: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/controller/CommentController.java:51: MethodArgumentCouldBeFinal: Parameter 'commentId' is not assigned and could be declared final
src/main/java/com/mediaplayer/controller/CommentController.java:58: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/controller/CommentController.java:58: MethodArgumentCouldBeFinal: Parameter 'response' is not assigned and could be declared final
src/main/java/com/mediaplayer/entity/Comment.java:11: UnnecessaryImport: Unused import 'lombok.AllArgsConstructor'
src/main/java/com/mediaplayer/entity/Comment.java:12: UnnecessaryImport: Unused import 'lombok.Data'
src/main/java/com/mediaplayer/entity/Comment.java:20: CommentRequired: Class comments are required
src/main/java/com/mediaplayer/entity/Comment.java:20: DataClass: The class 'Comment' is suspected to be a Data Class (WOC=0.000%, NOPA=0, NOAM=12, WMC=13)
src/main/java/com/mediaplayer/entity/Comment.java:24: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/entity/Comment.java:25: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/entity/Comment.java:26: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/entity/Comment.java:27: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/entity/Comment.java:29: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/entity/Comment.java:31: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/entity/Comment.java:34: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/entity/Comment.java:34: MethodArgumentCouldBeFinal: Parameter 'commentId' is not assigned and could be declared final
src/main/java/com/mediaplayer/entity/Comment.java:34: MethodArgumentCouldBeFinal: Parameter 'date' is not assigned and could be declared final
src/main/java/com/mediaplayer/entity/Comment.java:34: MethodArgumentCouldBeFinal: Parameter 'message' is not assigned and could be declared final
src/main/java/com/mediaplayer/entity/Comment.java:34: MethodArgumentCouldBeFinal: Parameter 'time' is not assigned and could be declared final
src/main/java/com/mediaplayer/entity/Comment.java:47: MethodArgumentCouldBeFinal: Parameter 'commentId' is not assigned and could be declared final
src/main/java/com/mediaplayer/entity/Comment.java:57: MethodArgumentCouldBeFinal: Parameter 'message' is not assigned and could be declared final
src/main/java/com/mediaplayer/entity/Comment.java:67: MethodArgumentCouldBeFinal: Parameter 'userId' is not assigned and could be declared final
src/main/java/com/mediaplayer/entity/Comment.java:77: MethodArgumentCouldBeFinal: Parameter 'videoId' is not assigned and could be declared final
src/main/java/com/mediaplayer/entity/Comment.java:87: MethodArgumentCouldBeFinal: Parameter 'date' is not assigned and could be declared final
src/main/java/com/mediaplayer/entity/Comment.java:97: MethodArgumentCouldBeFinal: Parameter 'time' is not assigned and could be declared final
src/main/java/com/mediaplayer/exceptionHandler/GlobalExceptionHandler.java:1: PackageCase: Package name contains upper case characters
src/main/java/com/mediaplayer/exceptionHandler/GlobalExceptionHandler.java:19: AtLeastOneConstructor: Each class should declare at least one constructor
src/main/java/com/mediaplayer/exceptionHandler/GlobalExceptionHandler.java:19: CommentRequired: Class comments are required
src/main/java/com/mediaplayer/exceptionHandler/GlobalExceptionHandler.java:22: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/exceptionHandler/GlobalExceptionHandler.java:22: MethodArgumentCouldBeFinal: Parameter 'ex' is not assigned and could be declared final
src/main/java/com/mediaplayer/exceptionHandler/GlobalExceptionHandler.java:22: ShortVariable: Avoid variables with short names like ex
src/main/java/com/mediaplayer/exceptionHandler/GlobalExceptionHandler.java:23: LocalVariableCouldBeFinal: Local variable 'errorResponse' could be declared final
src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java:7: UnnecessaryImport: Unused import 'org.springframework.web.bind.annotation.ResponseStatus'
src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java:9: UnnecessaryImport: Unused import 'lombok.Data'
src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java:11: CommentRequired: Class comments are required
src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java:11: MissingSerialVersionUID: Classes implementing Serializable should set a serialVersionUID
src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java:12: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java:13: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java:14: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java:16: CallSuperInConstructor: It is a good practice to call super() in a constructor
src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java:16: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java:16: MethodArgumentCouldBeFinal: Parameter 'message' is not assigned and could be declared final
src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java:16: MethodArgumentCouldBeFinal: Parameter 'status' is not assigned and could be declared final
src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java:26: MissingOverride: The method 'getMessage()' is missing an @Override annotation.
src/main/java/com/mediaplayer/repository/CommentRepository.java:18: CommentRequired: Class comments are required
src/main/java/com/mediaplayer/repository/CommentRepository.java:20: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/repository/CommentRepository.java:20: FormalParameterNamingConventions: The method parameter name 'VideoId' doesn't match '[a-z][a-zA-Z0-9]*'
src/main/java/com/mediaplayer/repository/CommentRepository.java:24: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/response/ErrorResponse.java:5: CommentRequired: Class comments are required
src/main/java/com/mediaplayer/response/ErrorResponse.java:6: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/response/ErrorResponse.java:6: ImmutableField: Field 'status' may be declared final
src/main/java/com/mediaplayer/response/ErrorResponse.java:7: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/response/ErrorResponse.java:7: ImmutableField: Field 'message' may be declared final
src/main/java/com/mediaplayer/response/ErrorResponse.java:8: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/response/ErrorResponse.java:8: ImmutableField: Field 'timestamp' may be declared final
src/main/java/com/mediaplayer/response/ErrorResponse.java:10: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/response/ErrorResponse.java:10: MethodArgumentCouldBeFinal: Parameter 'message' is not assigned and could be declared final
src/main/java/com/mediaplayer/response/ErrorResponse.java:10: MethodArgumentCouldBeFinal: Parameter 'status' is not assigned and could be declared final
src/main/java/com/mediaplayer/response/ErrorResponse.java:10: MethodArgumentCouldBeFinal: Parameter 'timestamp' is not assigned and could be declared final
src/main/java/com/mediaplayer/service/CommentService.java:18: CommentRequired: Class comments are required
src/main/java/com/mediaplayer/service/CommentService.java:20: CommentRequired: Field comments are required
src/main/java/com/mediaplayer/service/CommentService.java:20: ImmutableField: Field 'commentRepo' may be declared final
src/main/java/com/mediaplayer/service/CommentService.java:29: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/service/CommentService.java:29: MethodArgumentCouldBeFinal: Parameter 'commentRepo' is not assigned and could be declared final
src/main/java/com/mediaplayer/service/CommentService.java:34: AvoidUncheckedExceptionsInSignatures: A method or constructor should not explicitly declare unchecked exceptions in its 'throws' clause
src/main/java/com/mediaplayer/service/CommentService.java:34: MethodArgumentCouldBeFinal: Parameter 'c' is not assigned and could be declared final
src/main/java/com/mediaplayer/service/CommentService.java:34: MissingOverride: The method 'addnewComment(Comment)' is missing an @Override annotation.
src/main/java/com/mediaplayer/service/CommentService.java:34: ShortVariable: Avoid variables with short names like c
src/main/java/com/mediaplayer/service/CommentService.java:41: LocalVariableCouldBeFinal: Local variable 'comment' could be declared final
src/main/java/com/mediaplayer/service/CommentService.java:41: UnnecessaryLocalBeforeReturn: Consider simply returning the value vs storing it in local variable 'comment'
src/main/java/com/mediaplayer/service/CommentService.java:46: AvoidUncheckedExceptionsInSignatures: A method or constructor should not explicitly declare unchecked exceptions in its 'throws' clause
src/main/java/com/mediaplayer/service/CommentService.java:46: MethodArgumentCouldBeFinal: Parameter 'videoId' is not assigned and could be declared final
src/main/java/com/mediaplayer/service/CommentService.java:46: MissingOverride: The method 'allComments(int)' is missing an @Override annotation.
src/main/java/com/mediaplayer/service/CommentService.java:48: LocalVariableCouldBeFinal: Local variable 'list' could be declared final
src/main/java/com/mediaplayer/service/CommentService.java:59: AvoidUncheckedExceptionsInSignatures: A method or constructor should not explicitly declare unchecked exceptions in its 'throws' clause
src/main/java/com/mediaplayer/service/CommentService.java:59: MethodArgumentCouldBeFinal: Parameter 'commentId' is not assigned and could be declared final
src/main/java/com/mediaplayer/service/CommentService.java:59: MissingOverride: The method 'deleteComment(int)' is missing an @Override annotation.
src/main/java/com/mediaplayer/service/CommentService.java:60: LocalVariableCouldBeFinal: Local variable 'c' could be declared final
src/main/java/com/mediaplayer/service/CommentService.java:60: ShortVariable: Avoid variables with short names like c
src/main/java/com/mediaplayer/service/CommentServiceint.java:6: UnnecessaryImport: Unused import 'com.mediaplayer.exceptions.InvalidCommentException'
src/main/java/com/mediaplayer/service/CommentServiceint.java:8: CommentRequired: Class comments are required
src/main/java/com/mediaplayer/service/CommentServiceint.java:10: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/service/CommentServiceint.java:12: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/service/CommentServiceint.java:14: CommentRequired: Public method and constructor comments are required
src/main/java/com/mediaplayer/service/CommentServiceint.java:14: ShortVariable: Avoid variables with short names like c
src/test/java/com/mediaplayer/MediaPlayerApplicationTests.java:7: AtLeastOneConstructor: Each class should declare at least one constructor
src/test/java/com/mediaplayer/MediaPlayerApplicationTests.java:7: CommentRequired: Class comments are required
src/test/java/com/mediaplayer/MediaPlayerApplicationTests.java:10: JUnitTestsShouldIncludeAssert: JUnit tests should include assert() or fail()
src/test/java/com/mediaplayer/MediaPlayerApplicationTests.java:10: UncommentedEmptyMethodBody: Document empty method body
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:1: TooManyStaticImports: Too many static imports may lead to messy code
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:40: AtLeastOneConstructor: Each class should declare at least one constructor
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:40: ClassNamingConventions: The class name 'commentServiceImplStub' doesn't match '^Test.*$|^[A-Z][a-zA-Z0-9]*Test(s|Case)?$'
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:40: CommentRequired: Class comments are required
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:40: JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:43: CommentRequired: Field comments are required
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:43: LongVariable: Avoid excessively long variable names like globalExceptionHandler
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:45: CommentRequired: Public method and constructor comments are required
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:45: JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:45: JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:46: LocalVariableCouldBeFinal: Local variable 'commentRepo' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:47: LocalVariableCouldBeFinal: Local variable 'service' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:49: LocalVariableCouldBeFinal: Local variable 'comment' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:61: AvoidUncheckedExceptionsInSignatures: A method or constructor should not explicitly declare unchecked exceptions in its 'throws' clause
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:61: CommentRequired: Public method and constructor comments are required
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:61: JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:61: JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:62: LocalVariableCouldBeFinal: Local variable 'commentRepo' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:63: LocalVariableCouldBeFinal: Local variable 'service' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:65: LocalVariableCouldBeFinal: Local variable 'comment' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:67: UnnecessaryFullyQualifiedName: Unnecessary qualifier 'Mockito': 'when' is already in scope
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:69: UnusedAssignment: The value assigned to variable 'result' is never used (overwritten on line 69)
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:70: JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:71: JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:77: CommentRequired: Public method and constructor comments are required
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:77: JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:77: JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:77: LinguisticNaming: Linguistics Antipattern - The getter 'getCommentTest' should not return void linguistically
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:78: LocalVariableCouldBeFinal: Local variable 'commentRepo' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:79: LocalVariableCouldBeFinal: Local variable 'service' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:81: LocalVariableCouldBeFinal: Local variable 'videoId' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:92: AvoidUncheckedExceptionsInSignatures: A method or constructor should not explicitly declare unchecked exceptions in its 'throws' clause
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:92: CommentRequired: Public method and constructor comments are required
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:92: JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:92: JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:92: LinguisticNaming: Linguistics Antipattern - The getter 'getCommentTest1' should not return void linguistically
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:93: LocalVariableCouldBeFinal: Local variable 'commentRepo' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:94: LocalVariableCouldBeFinal: Local variable 'service' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:96: LocalVariableCouldBeFinal: Local variable 'videoId' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:97: LocalVariableCouldBeFinal: Local variable 'list' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:100: UnnecessaryFullyQualifiedName: Unnecessary qualifier 'Mockito': 'when' is already in scope
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:101: LocalVariableCouldBeFinal: Local variable 'result' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:102: JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:104: JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:110: CommentRequired: Public method and constructor comments are required
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:110: JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:110: JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:111: LocalVariableCouldBeFinal: Local variable 'commentRepo' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:112: LocalVariableCouldBeFinal: Local variable 'service' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:114: LocalVariableCouldBeFinal: Local variable 'commentId' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:115: UnnecessaryFullyQualifiedName: Unnecessary qualifier 'Mockito': 'when' is already in scope
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:126: AvoidUncheckedExceptionsInSignatures: A method or constructor should not explicitly declare unchecked exceptions in its 'throws' clause
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:126: CommentRequired: Public method and constructor comments are required
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:126: JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:126: JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:127: LocalVariableCouldBeFinal: Local variable 'commentRepo' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:128: LocalVariableCouldBeFinal: Local variable 'service' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:130: LocalVariableCouldBeFinal: Local variable 'commentId' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:131: UnnecessaryFullyQualifiedName: Unnecessary qualifier 'Mockito': 'when' is already in scope
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:132: LocalVariableCouldBeFinal: Local variable 'result' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:133: JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:138: CommentRequired: Public method and constructor comments are required
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:138: JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:138: JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:139: LocalVariableCouldBeFinal: Local variable 'exception' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:140: LocalVariableCouldBeFinal: Local variable 'response' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:142: JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:143: LawOfDemeter: Call to `getBody` on foreign value `response` (degree 1)
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:143: LocalVariableCouldBeFinal: Local variable 'errorResponse' could be declared final
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:144: JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
src/test/java/com/mediaplayer/service/commentServiceImplStub.java:146: JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
