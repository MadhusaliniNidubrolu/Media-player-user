<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns:pmd="http://pmd.sourceforge.net/report/2.0.0">
   <head>
      <title>PMD 7.0.0-rc3 Report</title>
      <style type="text/css">
    .bannercell {
      border: 0px;
      padding: 0px;
    }
    body {
      margin-left: 10px;
      margin-right: 10px;
      font:normal 80% arial,helvetica,sanserif;
      background-color:#FFFFFF;
      color:#000000;
    }
    .a td {
      background: #efefef;
    }
    .b td {
      background: #fff;
    }
    th, td {
      text-align: left;
      vertical-align: top;
    }
    th {
      font-weight:bold;
      background: #ccc;
      color: black;
    }
    table, th, td {
      font-size:100%;
      border: none
    }
    table.log tr td, tr th {

    }
    h2 {
      font-weight:bold;
      font-size:140%;
      margin-bottom: 5;
    }
    h3 {
      font-size:100%;
      font-weight:bold;
      background: #525D76;
      color: white;
      text-decoration: none;
      padding: 5px;
      margin-right: 2px;
      margin-left: 2px;
      margin-bottom: 0px;
    }
	.p1 { background:#FF9999; }
	.p2 { background:#FFCC66; }
	.p3 { background:#FFFF99; }
	.p4 { background:#99FF99; }
	.p5 { background:#a6caf0; }

		</style>
   </head>
   <body>
      <a name="top"/>
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
         <tr>
            <td class="bannercell" rowspan="2"/>
            <td class="text-align:right">
               <h2>PMD 7.0.0-rc3 Report. Generated on 2023-06-10 - 12:11:42</h2>
            </td>
         </tr>
      </table>
      <hr size="1"/>
      <h3>Summary</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:25%">Files</th>
            <th>Total</th>
            <th>
               <div class="p1">Priority 1</div>
            </th>
            <th>
               <div class="p2">Priority 2</div>
            </th>
            <th>
               <div class="p3">Priority 3</div>
            </th>
            <th>
               <div class="p4">Priority 4</div>
            </th>
            <th>
               <div class="p5">Priority 5</div>
            </th>
         </tr>
         <tr class="a">
            <td>11</td>
            <td>184</td>
            <td>2</td>
            <td>0</td>
            <td>165</td>
            <td>17</td>
            <td>0</td>
         </tr>
      </table>
      <hr size="1" width="100%" align="left"/>
      <h3>Rules</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:84%">Rule</th>
            <th style="width:8%">Violations</th>
            <th style="width:8%">Severity</th>
         </tr>
         <tr class="a">
            <td>
					[Documentation] CommentRequired</td>
            <td>49</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Code Style] LocalVariableCouldBeFinal</td>
            <td>29</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Code Style] MethodArgumentCouldBeFinal</td>
            <td>25</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Code Style] UnnecessaryImport</td>
            <td>13</td>
            <td>
               <div class="p4"> 4</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Best Practices] JUnit5TestShouldBePackagePrivate</td>
            <td>8</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Best Practices] JUnitAssertionsShouldIncludeMessage</td>
            <td>8</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Best Practices] JUnitTestContainsTooManyAsserts</td>
            <td>7</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Design] AvoidUncheckedExceptionsInSignatures</td>
            <td>6</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Code Style] ShortVariable</td>
            <td>5</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Code Style] AtLeastOneConstructor</td>
            <td>4</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Best Practices] MissingOverride</td>
            <td>4</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Design] ImmutableField</td>
            <td>4</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Code Style] UnnecessaryFullyQualifiedName</td>
            <td>4</td>
            <td>
               <div class="p4"> 4</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Code Style] UnnecessaryLocalBeforeReturn</td>
            <td>2</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Code Style] LinguisticNaming</td>
            <td>2</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Design] UseUtilityClass</td>
            <td>1</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Code Style] CommentDefaultAccessModifier</td>
            <td>1</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Design] DataClass</td>
            <td>1</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Code Style] PackageCase</td>
            <td>1</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Error Prone] MissingSerialVersionUID</td>
            <td>1</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Code Style] CallSuperInConstructor</td>
            <td>1</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Code Style] FormalParameterNamingConventions</td>
            <td>1</td>
            <td>
               <div class="p1"> 1</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Best Practices] JUnitTestsShouldIncludeAssert</td>
            <td>1</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Documentation] UncommentedEmptyMethodBody</td>
            <td>1</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Code Style] TooManyStaticImports</td>
            <td>1</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Code Style] ClassNamingConventions</td>
            <td>1</td>
            <td>
               <div class="p1"> 1</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Code Style] LongVariable</td>
            <td>1</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="b">
            <td>
					[Best Practices] UnusedAssignment</td>
            <td>1</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
         <tr class="a">
            <td>
					[Design] LawOfDemeter</td>
            <td>1</td>
            <td>
               <div class="p3"> 3</div>
            </td>
         </tr>
      </table>
      <hr size="1" width="100%" align="left"/>
      <h3>Files</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th>File</th>
            <th style="width:40px">
               <div class="p5">5</div>
            </th>
            <th style="width:40px">
               <div class="p4">4</div>
            </th>
            <th style="width:40px">
               <div class="p3">3</div>
            </th>
            <th style="width:40px">
               <div class="p2">2</div>
            </th>
            <th style="width:40px">
               <div class="p1">1</div>
            </th>
         </tr>
         <tr class="a">
            <td>
               <a href="#f-src_test_java_com_mediaplayer_service_commentServiceImplStub.java">src/test/java/com/mediaplayer/service/commentServiceImplStub.java</a>
            </td>
            <td>0</td>
            <td>4</td>
            <td>66</td>
            <td>0</td>
            <td>1</td>
         </tr>
         <tr class="b">
            <td>
               <a href="#f-src_main_java_com_mediaplayer_controller_CommentController.java">src/main/java/com/mediaplayer/controller/CommentController.java</a>
            </td>
            <td>0</td>
            <td>8</td>
            <td>16</td>
            <td>0</td>
            <td>0</td>
         </tr>
         <tr class="a">
            <td>
               <a href="#f-src_main_java_com_mediaplayer_entity_Comment.java">src/main/java/com/mediaplayer/entity/Comment.java</a>
            </td>
            <td>0</td>
            <td>2</td>
            <td>19</td>
            <td>0</td>
            <td>0</td>
         </tr>
         <tr class="b">
            <td>
               <a href="#f-src_main_java_com_mediaplayer_service_CommentService.java">src/main/java/com/mediaplayer/service/CommentService.java</a>
            </td>
            <td>0</td>
            <td>0</td>
            <td>20</td>
            <td>0</td>
            <td>0</td>
         </tr>
         <tr class="a">
            <td>
               <a href="#f-src_main_java_com_mediaplayer_exceptions_InvalidCommentException.java">src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java</a>
            </td>
            <td>0</td>
            <td>2</td>
            <td>10</td>
            <td>0</td>
            <td>0</td>
         </tr>
         <tr class="b">
            <td>
               <a href="#f-src_main_java_com_mediaplayer_response_ErrorResponse.java">src/main/java/com/mediaplayer/response/ErrorResponse.java</a>
            </td>
            <td>0</td>
            <td>0</td>
            <td>11</td>
            <td>0</td>
            <td>0</td>
         </tr>
         <tr class="a">
            <td>
               <a href="#f-src_main_java_com_mediaplayer_exceptionHandler_GlobalExceptionHandler.java">src/main/java/com/mediaplayer/exceptionHandler/GlobalExceptionHandler.java</a>
            </td>
            <td>0</td>
            <td>0</td>
            <td>7</td>
            <td>0</td>
            <td>0</td>
         </tr>
         <tr class="b">
            <td>
               <a href="#f-src_main_java_com_mediaplayer_service_CommentServiceint.java">src/main/java/com/mediaplayer/service/CommentServiceint.java</a>
            </td>
            <td>0</td>
            <td>1</td>
            <td>5</td>
            <td>0</td>
            <td>0</td>
         </tr>
         <tr class="a">
            <td>
               <a href="#f-src_main_java_com_mediaplayer_MediaPlayerApplication.java">src/main/java/com/mediaplayer/MediaPlayerApplication.java</a>
            </td>
            <td>0</td>
            <td>0</td>
            <td>4</td>
            <td>0</td>
            <td>0</td>
         </tr>
         <tr class="b">
            <td>
               <a href="#f-src_main_java_com_mediaplayer_repository_CommentRepository.java">src/main/java/com/mediaplayer/repository/CommentRepository.java</a>
            </td>
            <td>0</td>
            <td>0</td>
            <td>3</td>
            <td>0</td>
            <td>1</td>
         </tr>
         <tr class="a">
            <td>
               <a href="#f-src_test_java_com_mediaplayer_MediaPlayerApplicationTests.java">src/test/java/com/mediaplayer/MediaPlayerApplicationTests.java</a>
            </td>
            <td>0</td>
            <td>0</td>
            <td>4</td>
            <td>0</td>
            <td>0</td>
         </tr>
      </table>
      <hr size="1" width="100%" align="left"/>
      <a name="f-src_main_java_com_mediaplayer_MediaPlayerApplication.java"/>
      <h3>File src/main/java/com/mediaplayer/MediaPlayerApplication.java</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:60px;">Violation</th>
            <th>Error Description</th>
            <th style="width:40px;">Line</th>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Class comments are required
</a>
            </td>
            <td>7 - 7</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.UseUtilityClass]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#useutilityclass">
UseUtilityClass: This utility class has a non-private constructor
</a>
            </td>
            <td>7 - 7</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>9 - 9</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'args' is not assigned and could be declared final
</a>
            </td>
            <td>9 - 9</td>
         </tr>
      </table>
      <a href="#top">Back to top</a>
      <a name="f-src_main_java_com_mediaplayer_controller_CommentController.java"/>
      <h3>File src/main/java/com/mediaplayer/controller/CommentController.java</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:60px;">Violation</th>
            <th>Error Description</th>
            <th style="width:40px;">Line</th>
         </tr>
         <tr class="a">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'org.springframework.http.ResponseEntity'
</a>
            </td>
            <td>9 - 9</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'org.springframework.web.bind.annotation.ExceptionHandler'
</a>
            </td>
            <td>11 - 11</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'org.springframework.web.bind.annotation.PutMapping'
</a>
            </td>
            <td>15 - 15</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'org.springframework.web.bind.annotation.RequestParam'
</a>
            </td>
            <td>17 - 17</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'org.springframework.web.method.annotation.MethodArgumentTypeMismatchException'
</a>
            </td>
            <td>19 - 19</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'com.mediaplayer.service.CommentService'
</a>
            </td>
            <td>22 - 22</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'jakarta.persistence.EntityManager'
</a>
            </td>
            <td>25 - 25</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'jakarta.persistence.PersistenceContext'
</a>
            </td>
            <td>26 - 26</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.AtLeastOneConstructor]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#atleastoneconstructor">
AtLeastOneConstructor: Each class should declare at least one constructor
</a>
            </td>
            <td>30 - 30</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Class comments are required
</a>
            </td>
            <td>30 - 30</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>32 - 32</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.CommentDefaultAccessModifier]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#commentdefaultaccessmodifier">
CommentDefaultAccessModifier: Missing commented default access modifier on field 'logger'
</a>
            </td>
            <td>33 - 33</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>33 - 33</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>36 - 36</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'c' is not assigned and could be declared final
</a>
            </td>
            <td>36 - 36</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.ShortVariable]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#shortvariable">
ShortVariable: Avoid variables with short names like c
</a>
            </td>
            <td>36 - 36</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'comment' could be declared final
</a>
            </td>
            <td>38 - 38</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.UnnecessaryLocalBeforeReturn]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessarylocalbeforereturn">
UnnecessaryLocalBeforeReturn: Consider simply returning the value vs storing it in local variable 'comment'
</a>
            </td>
            <td>38 - 38</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>45 - 45</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'videoId' is not assigned and could be declared final
</a>
            </td>
            <td>45 - 45</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>51 - 51</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'commentId' is not assigned and could be declared final
</a>
            </td>
            <td>51 - 51</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>58 - 58</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'response' is not assigned and could be declared final
</a>
            </td>
            <td>58 - 58</td>
         </tr>
      </table>
      <a href="#top">Back to top</a>
      <a name="f-src_main_java_com_mediaplayer_entity_Comment.java"/>
      <h3>File src/main/java/com/mediaplayer/entity/Comment.java</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:60px;">Violation</th>
            <th>Error Description</th>
            <th style="width:40px;">Line</th>
         </tr>
         <tr class="a">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'lombok.AllArgsConstructor'
</a>
            </td>
            <td>11 - 11</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'lombok.Data'
</a>
            </td>
            <td>12 - 12</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Class comments are required
</a>
            </td>
            <td>20 - 20</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.DataClass]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#dataclass">
DataClass: The class 'Comment' is suspected to be a Data Class (WOC=0.000%, NOPA=0, NOAM=12, WMC=13)
</a>
            </td>
            <td>20 - 20</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>24 - 24</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>25 - 25</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>26 - 26</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>27 - 27</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>29 - 29</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>31 - 31</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>34 - 34</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'commentId' is not assigned and could be declared final
</a>
            </td>
            <td>34 - 34</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'date' is not assigned and could be declared final
</a>
            </td>
            <td>34 - 34</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'message' is not assigned and could be declared final
</a>
            </td>
            <td>34 - 34</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'time' is not assigned and could be declared final
</a>
            </td>
            <td>34 - 34</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'commentId' is not assigned and could be declared final
</a>
            </td>
            <td>47 - 47</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'message' is not assigned and could be declared final
</a>
            </td>
            <td>57 - 57</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'userId' is not assigned and could be declared final
</a>
            </td>
            <td>67 - 67</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'videoId' is not assigned and could be declared final
</a>
            </td>
            <td>77 - 77</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'date' is not assigned and could be declared final
</a>
            </td>
            <td>87 - 87</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'time' is not assigned and could be declared final
</a>
            </td>
            <td>97 - 97</td>
         </tr>
      </table>
      <a href="#top">Back to top</a>
      <a name="f-src_main_java_com_mediaplayer_exceptionHandler_GlobalExceptionHandler.java"/>
      <h3>File src/main/java/com/mediaplayer/exceptionHandler/GlobalExceptionHandler.java</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:60px;">Violation</th>
            <th>Error Description</th>
            <th style="width:40px;">Line</th>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.PackageCase]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#packagecase">
PackageCase: Package name contains upper case characters
</a>
            </td>
            <td>1 - 1</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.AtLeastOneConstructor]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#atleastoneconstructor">
AtLeastOneConstructor: Each class should declare at least one constructor
</a>
            </td>
            <td>19 - 19</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Class comments are required
</a>
            </td>
            <td>19 - 19</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>22 - 22</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'ex' is not assigned and could be declared final
</a>
            </td>
            <td>22 - 22</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.ShortVariable]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#shortvariable">
ShortVariable: Avoid variables with short names like ex
</a>
            </td>
            <td>22 - 22</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'errorResponse' could be declared final
</a>
            </td>
            <td>23 - 23</td>
         </tr>
      </table>
      <a href="#top">Back to top</a>
      <a name="f-src_main_java_com_mediaplayer_exceptions_InvalidCommentException.java"/>
      <h3>File src/main/java/com/mediaplayer/exceptions/InvalidCommentException.java</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:60px;">Violation</th>
            <th>Error Description</th>
            <th style="width:40px;">Line</th>
         </tr>
         <tr class="a">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'org.springframework.web.bind.annotation.ResponseStatus'
</a>
            </td>
            <td>7 - 7</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'lombok.Data'
</a>
            </td>
            <td>9 - 9</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Class comments are required
</a>
            </td>
            <td>11 - 11</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Error Prone.MissingSerialVersionUID]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_errorprone.html#missingserialversionuid">
MissingSerialVersionUID: Classes implementing Serializable should set a serialVersionUID
</a>
            </td>
            <td>11 - 11</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>12 - 12</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>13 - 13</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>14 - 14</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.CallSuperInConstructor]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#callsuperinconstructor">
CallSuperInConstructor: It is a good practice to call super() in a constructor
</a>
            </td>
            <td>16 - 16</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>16 - 16</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'message' is not assigned and could be declared final
</a>
            </td>
            <td>16 - 16</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'status' is not assigned and could be declared final
</a>
            </td>
            <td>16 - 16</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.MissingOverride]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#missingoverride">
MissingOverride: The method 'getMessage()' is missing an @Override annotation.
</a>
            </td>
            <td>26 - 26</td>
         </tr>
      </table>
      <a href="#top">Back to top</a>
      <a name="f-src_main_java_com_mediaplayer_repository_CommentRepository.java"/>
      <h3>File src/main/java/com/mediaplayer/repository/CommentRepository.java</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:60px;">Violation</th>
            <th>Error Description</th>
            <th style="width:40px;">Line</th>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Class comments are required
</a>
            </td>
            <td>18 - 18</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>20 - 20</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p1">1</div>
            </td>
            <td>
						[Code Style.FormalParameterNamingConventions]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_apex_codestyle.html#formalparameternamingconventions">
FormalParameterNamingConventions: The method parameter name 'VideoId' doesn't match '[a-z][a-zA-Z0-9]*'
</a>
            </td>
            <td>20 - 20</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>24 - 24</td>
         </tr>
      </table>
      <a href="#top">Back to top</a>
      <a name="f-src_main_java_com_mediaplayer_response_ErrorResponse.java"/>
      <h3>File src/main/java/com/mediaplayer/response/ErrorResponse.java</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:60px;">Violation</th>
            <th>Error Description</th>
            <th style="width:40px;">Line</th>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Class comments are required
</a>
            </td>
            <td>5 - 5</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>6 - 6</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.ImmutableField]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#immutablefield">
ImmutableField: Field 'status' may be declared final
</a>
            </td>
            <td>6 - 6</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>7 - 7</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.ImmutableField]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#immutablefield">
ImmutableField: Field 'message' may be declared final
</a>
            </td>
            <td>7 - 7</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>8 - 8</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.ImmutableField]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#immutablefield">
ImmutableField: Field 'timestamp' may be declared final
</a>
            </td>
            <td>8 - 8</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>10 - 10</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'message' is not assigned and could be declared final
</a>
            </td>
            <td>10 - 10</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'status' is not assigned and could be declared final
</a>
            </td>
            <td>10 - 10</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'timestamp' is not assigned and could be declared final
</a>
            </td>
            <td>10 - 10</td>
         </tr>
      </table>
      <a href="#top">Back to top</a>
      <a name="f-src_main_java_com_mediaplayer_service_CommentService.java"/>
      <h3>File src/main/java/com/mediaplayer/service/CommentService.java</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:60px;">Violation</th>
            <th>Error Description</th>
            <th style="width:40px;">Line</th>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Class comments are required
</a>
            </td>
            <td>18 - 18</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>20 - 20</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.ImmutableField]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#immutablefield">
ImmutableField: Field 'commentRepo' may be declared final
</a>
            </td>
            <td>20 - 20</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>29 - 29</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'commentRepo' is not assigned and could be declared final
</a>
            </td>
            <td>29 - 29</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.AvoidUncheckedExceptionsInSignatures]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#avoiduncheckedexceptionsinsignatures">
AvoidUncheckedExceptionsInSignatures: A method or constructor should not explicitly declare unchecked exceptions in its 'throws' clause
</a>
            </td>
            <td>34 - 34</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'c' is not assigned and could be declared final
</a>
            </td>
            <td>34 - 34</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.MissingOverride]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#missingoverride">
MissingOverride: The method 'addnewComment(Comment)' is missing an @Override annotation.
</a>
            </td>
            <td>34 - 34</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.ShortVariable]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#shortvariable">
ShortVariable: Avoid variables with short names like c
</a>
            </td>
            <td>34 - 34</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'comment' could be declared final
</a>
            </td>
            <td>41 - 41</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.UnnecessaryLocalBeforeReturn]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessarylocalbeforereturn">
UnnecessaryLocalBeforeReturn: Consider simply returning the value vs storing it in local variable 'comment'
</a>
            </td>
            <td>41 - 41</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.AvoidUncheckedExceptionsInSignatures]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#avoiduncheckedexceptionsinsignatures">
AvoidUncheckedExceptionsInSignatures: A method or constructor should not explicitly declare unchecked exceptions in its 'throws' clause
</a>
            </td>
            <td>46 - 46</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'videoId' is not assigned and could be declared final
</a>
            </td>
            <td>46 - 46</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.MissingOverride]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#missingoverride">
MissingOverride: The method 'allComments(int)' is missing an @Override annotation.
</a>
            </td>
            <td>46 - 46</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'list' could be declared final
</a>
            </td>
            <td>48 - 48</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.AvoidUncheckedExceptionsInSignatures]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#avoiduncheckedexceptionsinsignatures">
AvoidUncheckedExceptionsInSignatures: A method or constructor should not explicitly declare unchecked exceptions in its 'throws' clause
</a>
            </td>
            <td>59 - 59</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.MethodArgumentCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#methodargumentcouldbefinal">
MethodArgumentCouldBeFinal: Parameter 'commentId' is not assigned and could be declared final
</a>
            </td>
            <td>59 - 59</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.MissingOverride]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#missingoverride">
MissingOverride: The method 'deleteComment(int)' is missing an @Override annotation.
</a>
            </td>
            <td>59 - 59</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'c' could be declared final
</a>
            </td>
            <td>60 - 60</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.ShortVariable]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#shortvariable">
ShortVariable: Avoid variables with short names like c
</a>
            </td>
            <td>60 - 60</td>
         </tr>
      </table>
      <a href="#top">Back to top</a>
      <a name="f-src_main_java_com_mediaplayer_service_CommentServiceint.java"/>
      <h3>File src/main/java/com/mediaplayer/service/CommentServiceint.java</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:60px;">Violation</th>
            <th>Error Description</th>
            <th style="width:40px;">Line</th>
         </tr>
         <tr class="a">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryImport]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryimport">
UnnecessaryImport: Unused import 'com.mediaplayer.exceptions.InvalidCommentException'
</a>
            </td>
            <td>6 - 6</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Class comments are required
</a>
            </td>
            <td>8 - 8</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>10 - 10</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>12 - 12</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>14 - 14</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.ShortVariable]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#shortvariable">
ShortVariable: Avoid variables with short names like c
</a>
            </td>
            <td>14 - 14</td>
         </tr>
      </table>
      <a href="#top">Back to top</a>
      <a name="f-src_test_java_com_mediaplayer_MediaPlayerApplicationTests.java"/>
      <h3>File src/test/java/com/mediaplayer/MediaPlayerApplicationTests.java</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:60px;">Violation</th>
            <th>Error Description</th>
            <th style="width:40px;">Line</th>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.AtLeastOneConstructor]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#atleastoneconstructor">
AtLeastOneConstructor: Each class should declare at least one constructor
</a>
            </td>
            <td>7 - 7</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Class comments are required
</a>
            </td>
            <td>7 - 7</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitTestsShouldIncludeAssert]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junittestsshouldincludeassert">
JUnitTestsShouldIncludeAssert: JUnit tests should include assert() or fail()
</a>
            </td>
            <td>10 - 10</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.UncommentedEmptyMethodBody]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#uncommentedemptymethodbody">
UncommentedEmptyMethodBody: Document empty method body
</a>
            </td>
            <td>10 - 11</td>
         </tr>
      </table>
      <a href="#top">Back to top</a>
      <a name="f-src_test_java_com_mediaplayer_service_commentServiceImplStub.java"/>
      <h3>File src/test/java/com/mediaplayer/service/commentServiceImplStub.java</h3>
      <table class="log"
             border="0"
             cellpadding="5"
             cellspacing="2"
             width="100%">
         <tr>
            <th style="width:60px;">Violation</th>
            <th>Error Description</th>
            <th style="width:40px;">Line</th>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.TooManyStaticImports]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#toomanystaticimports">
TooManyStaticImports: Too many static imports may lead to messy code
</a>
            </td>
            <td>1 - 150</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.AtLeastOneConstructor]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#atleastoneconstructor">
AtLeastOneConstructor: Each class should declare at least one constructor
</a>
            </td>
            <td>40 - 40</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p1">1</div>
            </td>
            <td>
						[Code Style.ClassNamingConventions]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_apex_codestyle.html#classnamingconventions">
ClassNamingConventions: The class name 'commentServiceImplStub' doesn't match '^Test.*$|^[A-Z][a-zA-Z0-9]*Test(s|Case)?$'
</a>
            </td>
            <td>40 - 40</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Class comments are required
</a>
            </td>
            <td>40 - 40</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnit5TestShouldBePackagePrivate]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junit5testshouldbepackageprivate">
JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
</a>
            </td>
            <td>40 - 40</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Field comments are required
</a>
            </td>
            <td>43 - 43</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LongVariable]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#longvariable">
LongVariable: Avoid excessively long variable names like globalExceptionHandler
</a>
            </td>
            <td>43 - 43</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>45 - 45</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnit5TestShouldBePackagePrivate]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junit5testshouldbepackageprivate">
JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
</a>
            </td>
            <td>45 - 45</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitTestContainsTooManyAsserts]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junittestcontainstoomanyasserts">
JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
</a>
            </td>
            <td>45 - 45</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'commentRepo' could be declared final
</a>
            </td>
            <td>46 - 46</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'service' could be declared final
</a>
            </td>
            <td>47 - 47</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'comment' could be declared final
</a>
            </td>
            <td>49 - 49</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.AvoidUncheckedExceptionsInSignatures]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#avoiduncheckedexceptionsinsignatures">
AvoidUncheckedExceptionsInSignatures: A method or constructor should not explicitly declare unchecked exceptions in its 'throws' clause
</a>
            </td>
            <td>61 - 61</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>61 - 61</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnit5TestShouldBePackagePrivate]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junit5testshouldbepackageprivate">
JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
</a>
            </td>
            <td>61 - 61</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitTestContainsTooManyAsserts]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junittestcontainstoomanyasserts">
JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
</a>
            </td>
            <td>61 - 61</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'commentRepo' could be declared final
</a>
            </td>
            <td>62 - 62</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'service' could be declared final
</a>
            </td>
            <td>63 - 63</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'comment' could be declared final
</a>
            </td>
            <td>65 - 65</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryFullyQualifiedName]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryfullyqualifiedname">
UnnecessaryFullyQualifiedName: Unnecessary qualifier 'Mockito': 'when' is already in scope
</a>
            </td>
            <td>67 - 67</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.UnusedAssignment]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#unusedassignment">
UnusedAssignment: The value assigned to variable 'result' is never used (overwritten on line 69)
</a>
            </td>
            <td>69 - 69</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitAssertionsShouldIncludeMessage]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junitassertionsshouldincludemessage">
JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
</a>
            </td>
            <td>70 - 70</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitAssertionsShouldIncludeMessage]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junitassertionsshouldincludemessage">
JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
</a>
            </td>
            <td>71 - 71</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>77 - 77</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnit5TestShouldBePackagePrivate]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junit5testshouldbepackageprivate">
JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
</a>
            </td>
            <td>77 - 77</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitTestContainsTooManyAsserts]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junittestcontainstoomanyasserts">
JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
</a>
            </td>
            <td>77 - 77</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LinguisticNaming]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#linguisticnaming">
LinguisticNaming: Linguistics Antipattern - The getter 'getCommentTest' should not return void linguistically
</a>
            </td>
            <td>77 - 77</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'commentRepo' could be declared final
</a>
            </td>
            <td>78 - 78</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'service' could be declared final
</a>
            </td>
            <td>79 - 79</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'videoId' could be declared final
</a>
            </td>
            <td>81 - 81</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.AvoidUncheckedExceptionsInSignatures]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#avoiduncheckedexceptionsinsignatures">
AvoidUncheckedExceptionsInSignatures: A method or constructor should not explicitly declare unchecked exceptions in its 'throws' clause
</a>
            </td>
            <td>92 - 92</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>92 - 92</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnit5TestShouldBePackagePrivate]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junit5testshouldbepackageprivate">
JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
</a>
            </td>
            <td>92 - 92</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitTestContainsTooManyAsserts]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junittestcontainstoomanyasserts">
JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
</a>
            </td>
            <td>92 - 92</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LinguisticNaming]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#linguisticnaming">
LinguisticNaming: Linguistics Antipattern - The getter 'getCommentTest1' should not return void linguistically
</a>
            </td>
            <td>92 - 92</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'commentRepo' could be declared final
</a>
            </td>
            <td>93 - 93</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'service' could be declared final
</a>
            </td>
            <td>94 - 94</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'videoId' could be declared final
</a>
            </td>
            <td>96 - 96</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'list' could be declared final
</a>
            </td>
            <td>97 - 97</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryFullyQualifiedName]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryfullyqualifiedname">
UnnecessaryFullyQualifiedName: Unnecessary qualifier 'Mockito': 'when' is already in scope
</a>
            </td>
            <td>100 - 100</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'result' could be declared final
</a>
            </td>
            <td>101 - 101</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitAssertionsShouldIncludeMessage]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junitassertionsshouldincludemessage">
JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
</a>
            </td>
            <td>102 - 102</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitAssertionsShouldIncludeMessage]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junitassertionsshouldincludemessage">
JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
</a>
            </td>
            <td>104 - 104</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>110 - 110</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnit5TestShouldBePackagePrivate]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junit5testshouldbepackageprivate">
JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
</a>
            </td>
            <td>110 - 110</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitTestContainsTooManyAsserts]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junittestcontainstoomanyasserts">
JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
</a>
            </td>
            <td>110 - 110</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'commentRepo' could be declared final
</a>
            </td>
            <td>111 - 111</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'service' could be declared final
</a>
            </td>
            <td>112 - 112</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'commentId' could be declared final
</a>
            </td>
            <td>114 - 114</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryFullyQualifiedName]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryfullyqualifiedname">
UnnecessaryFullyQualifiedName: Unnecessary qualifier 'Mockito': 'when' is already in scope
</a>
            </td>
            <td>115 - 115</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.AvoidUncheckedExceptionsInSignatures]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#avoiduncheckedexceptionsinsignatures">
AvoidUncheckedExceptionsInSignatures: A method or constructor should not explicitly declare unchecked exceptions in its 'throws' clause
</a>
            </td>
            <td>126 - 126</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>126 - 126</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnit5TestShouldBePackagePrivate]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junit5testshouldbepackageprivate">
JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
</a>
            </td>
            <td>126 - 126</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitTestContainsTooManyAsserts]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junittestcontainstoomanyasserts">
JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
</a>
            </td>
            <td>126 - 126</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'commentRepo' could be declared final
</a>
            </td>
            <td>127 - 127</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'service' could be declared final
</a>
            </td>
            <td>128 - 128</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'commentId' could be declared final
</a>
            </td>
            <td>130 - 130</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p4">4</div>
            </td>
            <td>
						[Code Style.UnnecessaryFullyQualifiedName]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#unnecessaryfullyqualifiedname">
UnnecessaryFullyQualifiedName: Unnecessary qualifier 'Mockito': 'when' is already in scope
</a>
            </td>
            <td>131 - 131</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'result' could be declared final
</a>
            </td>
            <td>132 - 132</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitAssertionsShouldIncludeMessage]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junitassertionsshouldincludemessage">
JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
</a>
            </td>
            <td>133 - 133</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Documentation.CommentRequired]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_documentation.html#commentrequired">
CommentRequired: Public method and constructor comments are required
</a>
            </td>
            <td>138 - 138</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnit5TestShouldBePackagePrivate]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junit5testshouldbepackageprivate">
JUnit5TestShouldBePackagePrivate: JUnit 5 tests should be package-private.
</a>
            </td>
            <td>138 - 138</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitTestContainsTooManyAsserts]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junittestcontainstoomanyasserts">
JUnitTestContainsTooManyAsserts: Unit tests should not contain more than 1 assert(s).
</a>
            </td>
            <td>138 - 138</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'exception' could be declared final
</a>
            </td>
            <td>139 - 139</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'response' could be declared final
</a>
            </td>
            <td>140 - 140</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitAssertionsShouldIncludeMessage]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junitassertionsshouldincludemessage">
JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
</a>
            </td>
            <td>142 - 142</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Design.LawOfDemeter]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_design.html#lawofdemeter">
LawOfDemeter: Call to `getBody` on foreign value `response` (degree 1)
</a>
            </td>
            <td>143 - 143</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Code Style.LocalVariableCouldBeFinal]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_codestyle.html#localvariablecouldbefinal">
LocalVariableCouldBeFinal: Local variable 'errorResponse' could be declared final
</a>
            </td>
            <td>143 - 143</td>
         </tr>
         <tr class="b">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitAssertionsShouldIncludeMessage]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junitassertionsshouldincludemessage">
JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
</a>
            </td>
            <td>144 - 144</td>
         </tr>
         <tr class="a">
            <td>
               <div class="p3">3</div>
            </td>
            <td>
						[Best Practices.JUnitAssertionsShouldIncludeMessage]
						 -
						 <a href="https://docs.pmd-code.org/pmd-doc-7.0.0-rc3/pmd_rules_java_bestpractices.html#junitassertionsshouldincludemessage">
JUnitAssertionsShouldIncludeMessage: JUnit assertions should include a message
</a>
            </td>
            <td>146 - 146</td>
         </tr>
      </table>
      <a href="#top">Back to top</a>
      <hr size="1" width="100%" align="left"/>
   </body>
</html>
