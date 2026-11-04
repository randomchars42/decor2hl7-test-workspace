<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<xsl:stylesheet xmlns:iso="http://purl.oclc.org/dsdl/schematron"
                xmlns:saxon="http://saxon.sf.net/"
                xmlns:sch="http://purl.oclc.org/dsdl/schematron"
                xmlns:schold="http://www.ascc.net/xml/schematron"
                xmlns:xhtml="http://www.w3.org/1999/xhtml"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0"><!--Implementers: please note that overriding process-prolog or process-root is 
    the preferred method for meta-stylesheets to use where possible. -->
   <xsl:param name="archiveDirParameter"/>
   <xsl:param name="archiveNameParameter"/>
   <xsl:param name="fileNameParameter"/>
   <xsl:param name="fileDirParameter"/>
   <xsl:variable name="document-uri">
      <xsl:value-of select="document-uri(/)"/>
   </xsl:variable>
   <!--PHASES-->
   <!--PROLOG-->
   <xsl:output xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
               method="xml"
               omit-xml-declaration="no"
               standalone="yes"
               indent="yes"/>
   <!--XSD TYPES FOR XSLT2-->
   <!--KEYS AND FUNCTIONS-->
   <!--DEFAULT RULES-->
   <!--MODE: SCHEMATRON-SELECT-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-select-full-path">
      <xsl:apply-templates select="." mode="schematron-get-full-path"/>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-->
   <!--This mode can be used to generate an ugly though full XPath for locators-->
   <xsl:template match="*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">
            <xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>*:</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>[namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="preceding"
                    select="count(preceding-sibling::*[local-name()=local-name(current())                                   and namespace-uri() = namespace-uri(current())])"/>
      <xsl:text>[</xsl:text>
      <xsl:value-of select="1+ $preceding"/>
      <xsl:text>]</xsl:text>
   </xsl:template>
   <xsl:template match="@*" mode="schematron-get-full-path">
      <xsl:apply-templates select="parent::*" mode="schematron-get-full-path"/>
      <xsl:text>/</xsl:text>
      <xsl:choose>
         <xsl:when test="namespace-uri()=''">@<xsl:value-of select="name()"/>
         </xsl:when>
         <xsl:otherwise>
            <xsl:text>@*[local-name()='</xsl:text>
            <xsl:value-of select="local-name()"/>
            <xsl:text>' and namespace-uri()='</xsl:text>
            <xsl:value-of select="namespace-uri()"/>
            <xsl:text>']</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-2-->
   <!--This mode can be used to generate prefixed XPath for humans-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-2">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="preceding-sibling::*[name(.)=name(current())]">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>
   <!--MODE: SCHEMATRON-FULL-PATH-3-->
   <!--This mode can be used to generate prefixed XPath for humans 
	(Top-level element has index)-->
   <xsl:template match="node() | @*" mode="schematron-get-full-path-3">
      <xsl:for-each select="ancestor-or-self::*">
         <xsl:text>/</xsl:text>
         <xsl:value-of select="name(.)"/>
         <xsl:if test="parent::*">
            <xsl:text>[</xsl:text>
            <xsl:value-of select="count(preceding-sibling::*[name(.)=name(current())])+1"/>
            <xsl:text>]</xsl:text>
         </xsl:if>
      </xsl:for-each>
      <xsl:if test="not(self::*)">
         <xsl:text/>/@<xsl:value-of select="name(.)"/>
      </xsl:if>
   </xsl:template>
   <!--MODE: GENERATE-ID-FROM-PATH -->
   <xsl:template match="/" mode="generate-id-from-path"/>
   <xsl:template match="text()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.text-', 1+count(preceding-sibling::text()), '-')"/>
   </xsl:template>
   <xsl:template match="comment()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.comment-', 1+count(preceding-sibling::comment()), '-')"/>
   </xsl:template>
   <xsl:template match="processing-instruction()" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.processing-instruction-', 1+count(preceding-sibling::processing-instruction()), '-')"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-from-path">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:value-of select="concat('.@', name())"/>
   </xsl:template>
   <xsl:template match="*" mode="generate-id-from-path" priority="-0.5">
      <xsl:apply-templates select="parent::*" mode="generate-id-from-path"/>
      <xsl:text>.</xsl:text>
      <xsl:value-of select="concat('.',name(),'-',1+count(preceding-sibling::*[name()=name(current())]),'-')"/>
   </xsl:template>
   <!--MODE: GENERATE-ID-2 -->
   <xsl:template match="/" mode="generate-id-2">U</xsl:template>
   <xsl:template match="*" mode="generate-id-2" priority="2">
      <xsl:text>U</xsl:text>
      <xsl:number level="multiple" count="*"/>
   </xsl:template>
   <xsl:template match="node()" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>n</xsl:text>
      <xsl:number count="node()"/>
   </xsl:template>
   <xsl:template match="@*" mode="generate-id-2">
      <xsl:text>U.</xsl:text>
      <xsl:number level="multiple" count="*"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="string-length(local-name(.))"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="translate(name(),':','.')"/>
   </xsl:template>
   <!--Strip characters-->
   <xsl:template match="text()" priority="-1"/>
   <!--SCHEMA SETUP-->
   <xsl:template match="/">
      <svrl:schematron-output xmlns:svrl="http://purl.oclc.org/dsdl/svrl" title="" schemaVersion="">
         <xsl:comment>
            <xsl:value-of select="$archiveDirParameter"/>   
		 <xsl:value-of select="$archiveNameParameter"/>  
		 <xsl:value-of select="$fileNameParameter"/>  
		 <xsl:value-of select="$fileDirParameter"/>
         </xsl:comment>
         <svrl:ns-prefix-in-attribute-values uri="http://purl.oclc.org/dsdl/schematron" prefix="sch"/>
         <svrl:ns-prefix-in-attribute-values uri="http://www.w3.org/2001/XMLSchema" prefix="xs"/>
         <svrl:active-pattern>
            <xsl:attribute name="document">
               <xsl:value-of select="document-uri(/)"/>
            </xsl:attribute>
            <xsl:attribute name="name">Validate Template Particle Identity</xsl:attribute>
            <xsl:apply-templates/>
         </svrl:active-pattern>
         <xsl:apply-templates select="/" mode="M37"/>
      </svrl:schematron-output>
   </xsl:template>
   <!--SCHEMATRON PATTERNS-->
   <xsl:param name="allDECOR" select="//decor[1] | //decor-excerpt[1]"/>
   <xsl:param name="isDecorCompiled" select="exists($allDECOR[@versionDate])"/>
   <xsl:param name="deeplinkprefixservices"
              select="$allDECOR/@deeplinkprefixservices"/>
   <xsl:param name="projectCompileLanguage" select="$allDECOR/@language"/>
   <xsl:param name="projectDefaultLanguage"
              select="$allDECOR/project/@defaultLanguage"/>
   <xsl:param name="projectLanguages" select="$allDECOR/project/name/@language"/>
   <xsl:param name="projectId" select="$allDECOR/project/@id"/>
   <xsl:param name="projectPrefix" select="$allDECOR/project/@prefix"/>
   <xsl:param name="statusCodesInactive"
              select="('deprecated', 'cancelled', 'inactive', 'rejected', 'retired')"/>
   <xsl:param name="statusCodesInactiveFinal"
              select="('deprecated', 'cancelled', 'inactive', 'rejected', 'retired','final','active')"/>
   <xsl:param name="allDatasets" select="$allDECOR/datasets/dataset"/>
   <xsl:param name="allDatasetConcepts"
              select="$allDatasets//concept[not(ancestor::history | ancestor::conceptList)]"/>
   <xsl:param name="allDatasetConceptLists"
              select="$allDatasetConcepts/valueDomain/conceptList"/>
   <xsl:param name="allDatasetConceptListConcepts"
              select="$allDatasetConceptLists/concept"/>
   <xsl:param name="allValueSets" select="$allDECOR/terminology/valueSet"/>
   <xsl:param name="allCodeSystems" select="$allDECOR/terminology/codeSystem"/>
   <xsl:param name="allTerminologyAssociations"
              select="$allDECOR/terminology/terminologyAssociation"/>
   <xsl:param name="allScenarioActors" select="$allDECOR/scenarios/actors/actor"/>
   <xsl:param name="allScenarios" select="$allDECOR/scenarios/scenario"/>
   <xsl:param name="allTransactions" select="$allDECOR/scenarios//transaction"/>
   <xsl:param name="allTransactionRepresentingTemplates"
              select="$allDECOR/scenarios//representingTemplate"/>
   <xsl:param name="allIDs" select="$allDECOR/ids"/>
   <xsl:param name="allIdentifierAssociations"
              select="$allDECOR/ids/identifierAssociation"/>
   <xsl:param name="allTemplates" select="$allDECOR/rules/template"/>
   <xsl:param name="allTemplateAssociations"
              select="$allDECOR/rules/templateAssociation"/>
   <xsl:param name="allQuestionnaires" select="$allDECOR/rules/questionnaire"/>
   <xsl:param name="allQuestionnaireAssociations"
              select="$allDECOR/rules/questionnaireAssociation"/>
   <xsl:param name="allIssues" select="$allDECOR/issues/issue"/>
   <xsl:param name="oidNullFlavor" select="'2.16.840.1.113883.5.1008'"/>
   <xsl:param name="INTdigits" select="'^-?[1-9]\d*$|^+?\d*$'"/>
   <xsl:param name="REALdigits" select="'^[-+]?\d*\.?[0-9]+([eE][-+]?\d+)?$'"/>
   <xsl:param name="OIDpattern" select="'^[0-2](\.(0|[1-9]\d*))*$'"/>
   <xsl:param name="RUIDpattern" select="'^[A-Za-z][A-Za-z\d\-]*$'"/>
   <xsl:param name="UUIDpattern"
              select="'^[A-Fa-f\d]{8}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{4}-[A-Fa-f\d]{12}$'"/>
   <xsl:param name="TSpattern" select="'^[0-9]{4,14}'"/>
   <!--PATTERN Validate Project Validate Ids Validate baseId Validate defaultBaseId type Validate Unique Dataset ConceptList Ids Validate Unique Dataset ConceptList Concept Ids Validate Dataset Validate Dataset Concept Validate Dataset Concept List @ref Validate Dataset Concept List @id Validate Dataset Concept TerminologyAssociation Validate Scenario Validate Transaction Validate Transaction Actor Reference Validate Transaction sourceDataset with concepts Validate identifierAssociation Validate terminologyAssociation Validate ValueSet Validate Value Set concept list include and exclude statements Validate CodeSystem Validate Template Association Definition Validate Template Association Concept Validate Questionnaire Association Definition Validate Questionnaire Association Concept Validate StructureDefinition Association Concept Validate Template Validate Template example Validate Template context Validate Template Relationship Validate Template Element Validate Template Include Validate Template Choice Validate Template Attribute Validate Property Validate Template Element and Attribute Vocabulary Validate Template constraint, let, defineVariable, assert, report Validate Issue Object Validate tracking/assignment labels Validate questionnaire Validate Questionnaire Item AnswerValueSet Validate unitOption against item type Do not use unit Validate VersionAttributeConsistency Validate MultiplicityRangeRequired Validate MultiplicityRange Validate Conformance Validate Conformance Attribute Validate FreeFormMarkupWithLanguage Validate Included or Contained Template Validate Choice Validate Template Particle Identity-->
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Project</svrl:text>
   <!--RULE -->
   <xsl:template match="project/name" priority="1140" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="project/name"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="project/desc" priority="1139" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="project/desc"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="project/copyright" priority="1138" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="project/copyright"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@years[string-length() gt 0]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@years[string-length() gt 0]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: At least one year SHALL be present in copyright by <xsl:text/>
                  <xsl:value-of select="@by"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="project/buildingBlockRepository" priority="1137" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="project/buildingBlockRepository"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;buildingBlockRepository ', string-join(for $att in @*                  return                  concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="substring(@url, string-length(@url), 1) = '/'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="substring(@url, string-length(@url), 1) = '/'">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Project repository URL "<xsl:text/>
                  <xsl:value-of select="@url"/>
                  <xsl:text/>" SHALL end with "/".<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@ident) or @format[not(. = 'decor')] or substring(@ident, string-length(@ident), 1) = '-'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@ident) or @format[not(. = 'decor')] or substring(@ident, string-length(@ident), 1) = '-'">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Project repository ident "<xsl:text/>
                  <xsl:value-of select="@ident"/>
                  <xsl:text/>" SHALL end with "-".<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@format[not(. = 'decor')] or @ident"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@format[not(. = 'decor')] or @ident">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Project repository ident SHALL have a value when @format = 'decor' (this is the default value).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@format = 'fhir') or @ident"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@format = 'fhir') or @ident">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Project repository ident SHALL have a value when @format = 'fhir'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="project/release/note" priority="1136" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="project/release/note"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="project/version/desc" priority="1135" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="project/version/desc"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Ids</svrl:text>
   <xsl:variable name="allTypes"
                 select="for $t in ('DS','DE','SC','TR','CS','IS','AC','CL','EL','TM','VS','RL','TX','SX','EX','QX','CM','MP','SD','QQ','QR','IG') return $t"/>
   <xsl:variable name="allExtensions"
                 select="for $t in ('1' ,'2' ,'3' ,'4' ,'5' ,'6' ,'7' ,'8' ,'9' ,'10','11','16','17','18','19','20','21','24','26','27','28','29') return $t"/>
   <xsl:variable name="allTypesCount" select="count($allTypes)"/>
   <!--RULE -->
   <xsl:template match="ids" priority="1130" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="ids"/>
      <xsl:variable name="locationContext" select="concat(' | Location &lt;ids ', '/&gt;')"/>
      <xsl:variable name="idsBaseIdTypes" select="distinct-values(baseId/@type)"/>
      <xsl:variable name="idsDefaultBaseIdTypes"
                    select="distinct-values(defaultBaseId/@type)"/>
      <xsl:variable name="idsBaseIdTypesMissing"
                    select="$allTypes[not(. = $idsBaseIdTypes)]"/>
      <xsl:variable name="idsDefaultBaseIdTypesMissing"
                    select="$allTypes[not(. = $idsDefaultBaseIdTypes)]"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="empty($idsBaseIdTypesMissing)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($idsBaseIdTypesMissing)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Project SHOULD define a baseId for every possible type. Every missing type might lead to unexpected results. Expected '<xsl:text/>
                  <xsl:value-of select="$allTypesCount"/>
                  <xsl:text/>', found '<xsl:text/>
                  <xsl:value-of select="count($idsBaseIdTypes)"/>
                  <xsl:text/>'. Missing '<xsl:text/>
                  <xsl:value-of select="$idsBaseIdTypesMissing"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty($idsDefaultBaseIdTypesMissing)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($idsDefaultBaseIdTypesMissing)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Project SHALL define a defaultBaseId for every possible type. Every missing type might lead to unexpected results. Expected '<xsl:text/>
                  <xsl:value-of select="$allTypesCount"/>
                  <xsl:text/>', found '<xsl:text/>
                  <xsl:value-of select="count($idsDefaultBaseIdTypes)"/>
                  <xsl:text/>'. Missing '<xsl:text/>
                  <xsl:value-of select="$idsDefaultBaseIdTypesMissing"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate baseId</svrl:text>
   <!--RULE -->
   <xsl:template match="ids/baseId" priority="1128" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="ids/baseId"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;baseId ', string-join(for $att in @*                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="substring(@prefix, string-length(@prefix), 1) = '-'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="substring(@prefix, string-length(@prefix), 1) = '-'">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: baseId prefix "<xsl:text/>
                  <xsl:value-of select="@prefix"/>
                  <xsl:text/>" SHALL end with "-".<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="baseId" select="@id"/>
      <xsl:variable name="baseType" select="@type"/>
      <xsl:variable name="basePrefix" select="@prefix"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(../defaultBaseId) or count(parent::ids/defaultBaseId[@type = $baseType]) = 1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(../defaultBaseId) or count(parent::ids/defaultBaseId[@type = $baseType]) = 1">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Exactly one of type '<xsl:text/>
                  <xsl:value-of select="$baseType"/>
                  <xsl:text/>' SHALL be marked as default base id.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="../defaultBaseId or count(parent::ids/baseId[@type = $baseType][@default = 'true']) = 1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="../defaultBaseId or count(parent::ids/baseId[@type = $baseType][@default = 'true']) = 1">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Exactly one of type '<xsl:text/>
                  <xsl:value-of select="$baseType"/>
                  <xsl:text/>' SHALL be marked with @default='true'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="count(../baseId[@prefix = $basePrefix]) = 1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(../baseId[@prefix = $basePrefix]) = 1">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: The baseId/@prefix "<xsl:text/>
                  <xsl:value-of select="$basePrefix"/>
                  <xsl:text/>" with type "<xsl:text/>
                  <xsl:value-of select="$baseType"/>
                  <xsl:text/>" is not unique. This could lead to ambiguous situations if people use the display version of an id.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id = preceding-sibling::baseId/@id)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id = preceding-sibling::baseId/@id)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> "<xsl:text/>
                  <xsl:value-of select="@id"/>
                  <xsl:text/>" SHALL be unique.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(../defaultBaseId[@id = $baseId]) or ../defaultBaseId[@id = $baseId][@type = $baseType]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(../defaultBaseId[@id = $baseId]) or ../defaultBaseId[@id = $baseId][@type = $baseType]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> "<xsl:text/>
                  <xsl:value-of select="$baseId"/>
                  <xsl:text/>" has different type "<xsl:text/>
                  <xsl:value-of select="$baseType"/>
                  <xsl:text/>" than defaultBaseId type "<xsl:text/>
                  <xsl:value-of select="../defaultBaseId[@id = $baseId]/@type"/>
                  <xsl:text/>". This will lead to ambiguous situations if people use the display version of an id.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate defaultBaseId type</svrl:text>
   <!--RULE -->
   <xsl:template match="ids/defaultBaseId" priority="1126" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="ids/defaultBaseId"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;defaultBaseId ', string-join(for $att in @*                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="idType" select="@type"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::defaultBaseId/@type = @type)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::defaultBaseId/@type = @type)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> type "<xsl:text/>
                  <xsl:value-of select="@type"/>
                  <xsl:text/>" SHALL be unique.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id = preceding-sibling::defaultBaseId/@id)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id = preceding-sibling::defaultBaseId/@id)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> "<xsl:text/>
                  <xsl:value-of select="@id"/>
                  <xsl:text/>" SHALL be unique.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@id = ../baseId[@type = $idType]/@id"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@id = ../baseId[@type = $idType]/@id">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> type "<xsl:text/>
                  <xsl:value-of select="@type"/>
                  <xsl:text/>" and id "<xsl:text/>
                  <xsl:value-of select="@id"/>
                  <xsl:text/>" SHALL match a baseId of the same type.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Unique Dataset ConceptList Ids</svrl:text>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Unique Dataset ConceptList Concept Ids</svrl:text>
   <!--RULE -->
   <xsl:template match="datasets" priority="1123" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="datasets"/>
      <xsl:variable name="duplicateConceptListIds"
                    select="                 for $id in $allDatasetConceptLists[not(ancestor::history)]/@id                 return if (count($allDatasetConceptLists[not(ancestor::history)][@id = $id]) gt 1) then $id else ()"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$isDecorCompiled or empty($duplicateConceptListIds)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$isDecorCompiled or empty($duplicateConceptListIds)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Project SHALL NOT have duplicate conceptList/@id values. Found <xsl:text/>
                  <xsl:value-of select="count(distinct-values($duplicateConceptListIds))"/>
                  <xsl:text/>: '<xsl:text/>
                  <xsl:value-of select="string-join(distinct-values($duplicateConceptListIds), ', ')"/>
                  <xsl:text/>'.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="duplicateConceptListConceptIds"
                    select="                 for $id in $allDatasetConceptListConcepts[not(ancestor::history)]/@id                 return if (count($allDatasetConceptListConcepts[not(ancestor::history)][@id = $id]) gt 1) then $id else ()"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$isDecorCompiled or empty($duplicateConceptListConceptIds)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$isDecorCompiled or empty($duplicateConceptListConceptIds)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Project SHALL NOT have duplicate conceptList/concept/@id values. Found <xsl:text/>
                  <xsl:value-of select="count(distinct-values($duplicateConceptListConceptIds))"/>
                  <xsl:text/>: '<xsl:text/>
                  <xsl:value-of select="string-join(distinct-values($duplicateConceptListConceptIds), ', ')"/>
                  <xsl:text/>'.</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Dataset</svrl:text>
   <!--RULE -->
   <xsl:template match="dataset[not(ancestor-or-self::*[@statusCode = $statusCodesInactive])]"
                 priority="1121"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset[not(ancestor-or-self::*[@statusCode = $statusCodesInactive])]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;dataset ', string-join(for $att in (@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, ancestor-or-self::dataset[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::dataset[1]/@ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@id and @effectiveDate) or @ref"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@id and @effectiveDate) or @ref">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL have an @id and @effectiveDate, or a @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @ref)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@id and @ref)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@canonicalUri and @ref)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@canonicalUri and @ref)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @canonicalUri and @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT warning-->
      <xsl:if test="@inheritanceIssues">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@inheritanceIssues">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHOULD NOT have descending concepts that are out of sync against their original concepts. Found <xsl:text/>
               <xsl:value-of select="@inheritanceIssues"/>
               <xsl:text/> concept(s) with issues.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="@linkedartefactmissing">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@linkedartefactmissing">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHALL NOT have descending concepts where their inherit, contains or relationship target is not found. Found: <xsl:text/>
               <xsl:value-of select="@linkedartefactmissing"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="dataset[not(ancestor-or-self::*[@statusCode = $statusCodesInactive])]/name"
                 priority="1120"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset[not(ancestor-or-self::*[@statusCode = $statusCodesInactive])]/name"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="dataset[not(ancestor-or-self::*[@statusCode = $statusCodesInactive])]/desc"
                 priority="1119"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset[not(ancestor-or-self::*[@statusCode = $statusCodesInactive])]/desc"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Dataset Concept</svrl:text>
   <!--RULE -->
   <xsl:template match="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])]"
                 priority="1117"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])]"/>
      <xsl:variable name="dsid" select="ancestor::dataset[1]/@id"/>
      <xsl:variable name="dsed" select="ancestor::dataset[1]/@effectiveDate"/>
      <xsl:variable name="dsedmax"
                    select="max($allDatasets[@id = $dsid]/xs:dateTime(@effectiveDate))"/>
      <xsl:variable name="de" select="."/>
      <xsl:variable name="deid" select="@id"/>
      <xsl:variable name="deed" select="@effectiveDate"/>
      <xsl:variable name="deedmax"
                    select="max($allDatasetConcepts[@id = $dsid]/xs:dateTime(@effectiveDate))"/>
      <xsl:variable name="isInTransactionWithConnectedTemplate"
                    select="                 if ($dsed = $dsedmax) then                      $allTransactionRepresentingTemplates[@sourceDataset = $dsid][@sourceDatasetFlexibility = $dsed or not(@sourceDatasetFlexibility castable as xs:dateTime)][@ref]/concept[@ref = $deid][not(ancestor::*/@statusCode = $statusCodesInactive)]                 else                     $allTransactionRepresentingTemplates[@sourceDataset = $dsid][@sourceDatasetFlexibility = $dsed][@ref]/concept[@ref = $deid][not(ancestor::*/@statusCode = $statusCodesInactive)]                 "/>
      <xsl:variable name="isInTemplate"
                    select="$allTemplateAssociations/concept[@ref = $deid][@effectiveDate = $deed]"/>
      <xsl:variable name="isInTransactionWithConnectedQuestionnaire"
                    select="                 if ($dsed = $dsedmax) then                  $allTransactionRepresentingTemplates[@sourceDataset = $dsid][@sourceDatasetFlexibility = $dsed or not(@sourceDatasetFlexibility castable as xs:dateTime)][@representingQuestionnaire]/concept[@ref = $deid][not(ancestor::*/@statusCode = $statusCodesInactive)]                 else                 $allTransactionRepresentingTemplates[@sourceDataset = $dsid][@sourceDatasetFlexibility = $dsed][@representingQuestionnaire]/concept[@ref = $deid][not(ancestor::*/@statusCode = $statusCodesInactive)]                 "/>
      <xsl:variable name="isInQuestionnaire"
                    select="$allQuestionnaireAssociations/concept[@ref = $deid][@effectiveDate = $deed]"/>
      <xsl:variable name="inhbyid1"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $de/inherit/@ref]"/>
      <xsl:variable name="inhc1"
                    select="if ($de[@type]) then () else if ($de/inherit/@effectiveDate) then $inhbyid1[@effectiveDate = $de/inherit/@effectiveDate] else $inhbyid1[@effectiveDate = max($inhbyid1/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="inhbyid2"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $inhc1/inherit/@ref]"/>
      <xsl:variable name="inhc2"
                    select="if ($de[@type]) then () else if ($inhc1/inherit/@effectiveDate) then $inhbyid2[@effectiveDate = $inhc1/inherit/@effectiveDate] else $inhbyid2[@effectiveDate = max($inhbyid2/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="inhbyid3"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $inhc2/inherit/@ref]"/>
      <xsl:variable name="inhc3"
                    select="if ($de[@type]) then () else if ($inhc2/inherit/@effectiveDate) then $inhbyid3[@effectiveDate = $inhc2/inherit/@effectiveDate] else $inhbyid3[@effectiveDate = max($inhbyid3/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="detype" select="($de, $inhc1, $inhc2, $inhc3)[@type][1]"/>
      <xsl:variable name="dename"
                    select="($de, $inhc1, $inhc2, $inhc3)[name][1]/name[not(. = '')][1]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;concept ', string-join((                     for $att in ancestor-or-self::concept[1]/(@id, @ref, $detype/@type, $dename, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, ancestor-or-self::dataset[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::dataset[1]/@ident)                     return                         concat(name($att), '=&#34;', $att, '&#34;'),                     for $att in ancestor-or-self::dataset/(@id, @effectiveDate, @versionLabel, @statusCode, name[not(. = '')][1])                     return                         concat('dataset', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;')                 ), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$isDecorCompiled or not(inherit and contains)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$isDecorCompiled or not(inherit and contains)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both inherit and contains.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@type or (inherit | contains)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@type or (inherit | contains)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL have @type if the concept does not inherit or reference another concept (contains).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$isDecorCompiled or not(@type and (inherit | contains))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$isDecorCompiled or not(@type and (inherit | contains))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have @type if concept inherits or is a reference.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(inherit) or (inherit[@ref][@effectiveDate])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(inherit) or (inherit[@ref][@effectiveDate])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/inherit SHALL have both @ref and @effectiveDate.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="inherit | contains | .[name]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="inherit | contains | .[name]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL have at least name, or have an inherit or contains.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(contains and * except (comment | contains | history | concept[@statusCode = 'new'])) or $isDecorCompiled"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(contains and * except (comment | contains | history | concept[@statusCode = 'new'])) or $isDecorCompiled">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> that references another concept SHALL NOT contain elements other than comment. Found: <xsl:text/>
                  <xsl:value-of select="string-join((* except (comment | contains | history | concept[@statusCode = 'new']))/name(), ', ')"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(inherit and * except (comment | concept | inherit | history)) or $isDecorCompiled"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(inherit and * except (comment | concept | inherit | history)) or $isDecorCompiled">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> that inherits SHALL only have a comment and/or child concepts. Found: <xsl:text/>
                  <xsl:value-of select="string-join((* except (comment | concept | inherit | history))/name(), ', ')"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="emptynames"
                    select="name[string-length(normalize-space()) = 0]/@language"/>
      <xsl:variable name="emptydescriptions"
                    select="desc[string-join(.//text()/normalize-space(), '') = '']/@language"/>
      <xsl:variable name="missingnames"
                    select="$projectLanguages[not(. = $de/name/@language)]"/>
      <xsl:variable name="missingdescriptions"
                    select="$projectLanguages[not(. = $de/desc/@language)]"/>
      <!--REPORT error-->
      <xsl:if test="not(inherit | contains) and $emptynames">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(inherit | contains) and $emptynames">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> name SHALL NOT be empty. Found empty for language(s): <xsl:text/>
               <xsl:value-of select="string-join($emptynames, ', ')"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="(inherit | contains) and $emptynames">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="(inherit | contains) and $emptynames">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHALL have at least one non-empty name in a compiled project. Empty names are usually a sign that the inherit or contains did not resolve.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT warning-->
      <xsl:if test="not($de[@statusCode = 'final']) and $emptydescriptions">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not($de[@statusCode = 'final']) and $emptydescriptions">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> desc (definition) SHOULD NOT be empty. Found empty for language(s): <xsl:text/>
               <xsl:value-of select="string-join($emptydescriptions, ', ')"/>
               <xsl:text/>
               <xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="$isDecorCompiled or $de[@statusCode = 'final'] or empty(name) or empty($missingnames)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$isDecorCompiled or $de[@statusCode = 'final'] or empty(name) or empty($missingnames)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD have a name in all project languages. Found: <xsl:text/>
                  <xsl:value-of select="name/@language"/>
                  <xsl:text/>. Missing: <xsl:text/>
                  <xsl:value-of select="$missingnames"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="$isDecorCompiled or $de[@statusCode = 'final'] or not(empty($missingnames)) or empty(desc) or empty($missingdescriptions)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$isDecorCompiled or $de[@statusCode = 'final'] or not(empty($missingnames)) or empty(desc) or empty($missingdescriptions)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD have a desc in all project languages. Found: <xsl:text/>
                  <xsl:value-of select="desc/@language"/>
                  <xsl:text/>. Missing: <xsl:text/>
                  <xsl:value-of select="$missingdescriptions"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not($isDecorCompiled) or $projectCompileLanguage = '*' or name[@language = $projectCompileLanguage]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($isDecorCompiled) or $projectCompileLanguage = '*' or name[@language = $projectCompileLanguage]">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD have a name in the language it was compiled for (<xsl:text/>
                  <xsl:value-of select="$projectCompileLanguage"/>
                  <xsl:text/>). Found: <xsl:text/>
                  <xsl:value-of select="name/@language"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not($isDecorCompiled) or $de[@statusCode = 'final'] or $projectCompileLanguage = '*' or empty(desc) or desc[@language = $projectCompileLanguage]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($isDecorCompiled) or $de[@statusCode = 'final'] or $projectCompileLanguage = '*' or empty(desc) or desc[@language = $projectCompileLanguage]">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD have a desc in the language it was compiled for (<xsl:text/>
                  <xsl:value-of select="$projectCompileLanguage"/>
                  <xsl:text/>). Found: <xsl:text/>
                  <xsl:value-of select="desc/@language"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT info-->
      <xsl:if test="$isDecorCompiled and $projectCompileLanguage = '*' and not(empty($missingnames))">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$isDecorCompiled and $projectCompileLanguage = '*' and not(empty($missingnames))">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHOULD have a name in all project languages because that's what it was compiled for. Found: <xsl:text/>
               <xsl:value-of select="name/@language"/>
               <xsl:text/>. Missing: <xsl:text/>
               <xsl:value-of select="$missingnames"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT info-->
      <xsl:if test="$isDecorCompiled and not($de[@statusCode = 'final']) and $projectCompileLanguage = '*' and not(empty($missingdescriptions))">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$isDecorCompiled and not($de[@statusCode = 'final']) and $projectCompileLanguage = '*' and not(empty($missingdescriptions))">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHOULD have a desc in all project languages because that's what it was compiled for. Found: <xsl:text/>
               <xsl:value-of select="desc/@language"/>
               <xsl:text/>. Missing: <xsl:text/>
               <xsl:value-of select="$missingdescriptions"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($detype[@type = 'group']) or $de[@statusCode = 'final'] or ($detype[@type = 'group'] and concept and not(valueDomain)) or contains"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($detype[@type = 'group']) or $de[@statusCode = 'final'] or ($detype[@type = 'group'] and concept and not(valueDomain)) or contains">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> of (inherited) type group SHOULD have concept child definition(s).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($detype[@type = 'item']) or ($detype[@type = 'item'] and not(concept)) or contains"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($detype[@type = 'item']) or ($detype[@type = 'item'] and not(concept)) or contains">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> of (inherited) type item SHALL NOT have concept child definition(s).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="$isDecorCompiled or (not($isInTransactionWithConnectedTemplate and $allTemplates) or $isInTemplate)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$isDecorCompiled or (not($isInTransactionWithConnectedTemplate and $allTemplates) or $isInTemplate)">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="if ($detype/@type) then concat(' (type=''', $detype/@type, ''')') else ()"/>
                  <xsl:text/> is used in at least one transaction connected to a template, but does not have a templateAssociation. This 'may' resolve itself in compilation.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($isDecorCompiled) or (not($isInTransactionWithConnectedTemplate and $allTemplates and $allTemplates[empty(usage)]) or $isInTemplate)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($isDecorCompiled) or (not($isInTransactionWithConnectedTemplate and $allTemplates and $allTemplates[empty(usage)]) or $isInTemplate)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="if ($detype/@type) then concat(' (type=''', $detype/@type, ''')') else ()"/>
                  <xsl:text/> is used in at least one transaction connected to a template, but does not have a templateAssociation.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="$isDecorCompiled or (not($isInTransactionWithConnectedQuestionnaire and $allQuestionnaires) or $isInQuestionnaire)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$isDecorCompiled or (not($isInTransactionWithConnectedQuestionnaire and $allQuestionnaires) or $isInQuestionnaire)">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="if ($detype/@type) then concat(' (type=''', $detype/@type, ''')') else ()"/>
                  <xsl:text/> is used in at least one transaction connected to a questionnaire, but does not have a questionnaireAssociation. This 'may' resolve itself in compilation.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($isDecorCompiled) or (not($isInTransactionWithConnectedQuestionnaire and $allQuestionnaires) or $isInQuestionnaire)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($isDecorCompiled) or (not($isInTransactionWithConnectedQuestionnaire and $allQuestionnaires) or $isInQuestionnaire)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="if ($detype/@type) then concat(' (type=''', $detype/@type, ''')') else ()"/>
                  <xsl:text/> is used in at least one transaction connected to a questionnaire, but does not have a questionnaireAssociation.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="$de[@statusCode = $statusCodesInactiveFinal] or $inhc1[@id = $deid] or $inhc1[tokenize(@id, '\.')[last()] = tokenize($deid, '\.')[last()]] or not($inhc1[ancestor-or-self::*/@statusCode = $statusCodesInactive])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$de[@statusCode = $statusCodesInactiveFinal] or $inhc1[@id = $deid] or $inhc1[tokenize(@id, '\.')[last()] = tokenize($deid, '\.')[last()]] or not($inhc1[ancestor-or-self::*/@statusCode = $statusCodesInactive])">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD NOT inherit from a concept that has or is under an inactive status (<xsl:text/>
                  <xsl:value-of select="$inhc1/ancestor-or-self::*[@statusCode = $statusCodesInactive][1]/@statusCode"/>
                  <xsl:text/>).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="terminologyAssociation[@expirationDate]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="terminologyAssociation[@expirationDate]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> contains <xsl:text/>
               <xsl:value-of select="count(terminologyAssociation[@expirationDate])"/>
               <xsl:text/> expired terminologyAssociation(s). This constitutes a compilation error.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT warning-->
      <xsl:if test="terminologyAssociation[@strength[not(. = 'required')]][not(@valueSet)]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="terminologyAssociation[@strength[not(. = 'required')]][not(@valueSet)]">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHOULD NOT carry a terminologyAssociation specifying a binding strength unless it concerns a value set binding.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(terminologyAssociation[@valueSet]) or count(terminologyAssociation[@valueSet]) = count(valueSet)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(terminologyAssociation[@valueSet]) or count(terminologyAssociation[@valueSet]) = count(valueSet)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD carry as many valueSets as terminologyAssociations pointing to a valueSet. In a compiled project, references should have been resolved.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="terminologyAssociation[not(@code | @valueSet)]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="terminologyAssociation[not(@code | @valueSet)]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/terminologyAssociation SHALL have a @code or a @valueSet.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="terminologyAssociation[@code][@valueSet]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="terminologyAssociation[@code][@valueSet]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/terminologyAssociation SHALL NOT have both @code and @valueSet.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="terminologyAssociation[@flexibility][not(@valueSet)]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="terminologyAssociation[@flexibility][not(@valueSet)]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/terminologyAssociation SHALL NOT have @flexibility without @valueSet.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="terminologyAssociation[@valueSet][not(matches(@valueSet, '^[0-9\.]+$') or starts-with(@valueSet, 'http'))]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="terminologyAssociation[@valueSet][not(matches(@valueSet, '^[0-9\.]+$') or starts-with(@valueSet, 'http'))]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/terminologyAssociation SHALL have valueSet reference based on valueSet/@id. References by @name quickly become ambiguous.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT warning-->
      <xsl:if test="inherit[@inheritanceIssues = 'true']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="inherit[@inheritanceIssues = 'true']">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> inherits from a concept group that has had structural changes after you inherited from it. The original has <xsl:text/>
               <xsl:value-of select="inherit/@inheritExtraConcepts"/>
               <xsl:text/> extra concept(s), and the current has <xsl:text/>
               <xsl:value-of select="inherit/@currentExtraConcepts"/>
               <xsl:text/> extra concept(s). The latter usually means they were moved in the original.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="inherit[@linkedartefactmissing = 'true']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="inherit[@linkedartefactmissing = 'true']">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> inherit target SHALL exist.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="contains[@linkedartefactmissing = 'true']">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="contains[@linkedartefactmissing = 'true']">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> contains target SHALL exist.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])]/name"
                 priority="1116"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])]/name"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])]/desc"
                 priority="1115"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])]/desc"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])]/source"
                 priority="1114"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])]/source"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])]/rationale"
                 priority="1113"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])]/rationale"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])]/operationalization"
                 priority="1112"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])]/operationalization"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])][ancestor::decor[@compilationDate castable as xs:dateTime]/xs:dateTime(@compilationDate) ge xs:dateTime('2019-06-21T09:00:00')]/relationship"
                 priority="1111"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset//concept[not(ancestor::history | ancestor::conceptList | ancestor-or-self::*[@statusCode = $statusCodesInactive])][ancestor::decor[@compilationDate castable as xs:dateTime]/xs:dateTime(@compilationDate) ge xs:dateTime('2019-06-21T09:00:00')]/relationship"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;concept ', string-join((                 for $att in ancestor-or-self::concept[1]/(@id, @ref, name[not(. = '')][1], @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, ancestor-or-self::dataset[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::dataset[1]/@ident)                 return                     concat(name($att), '=&#34;', $att, '&#34;'),                  for $att in ancestor-or-self::dataset/(@id, @effectiveDate, @versionLabel, @statusCode, name[not(. = '')][1])                 return                     concat('dataset', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;')                 ), ' '), '/&gt;')"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@prefix"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@prefix">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: concept has <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> that does not resolve to any concept. In a compiled project, references are expected to resolve.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Dataset Concept List @ref</svrl:text>
   <!--RULE -->
   <xsl:template match="dataset//valueDomain/conceptList[@ref][not(ancestor::history | ancestor::*[@statusCode = $statusCodesInactive])]"
                 priority="1109"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset//valueDomain/conceptList[@ref][not(ancestor::history | ancestor::*[@statusCode = $statusCodesInactive])]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;concept ', string-join((                 for $att in ancestor-or-self::concept[1]/(@id, @ref, name[not(. = '')][1], @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, ancestor-or-self::dataset[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::dataset[1]/@ident)                 return                     concat(name($att), '=&#34;', $att, '&#34;'),                  for $att in ancestor-or-self::dataset/(@id, @effectiveDate, @versionLabel, @statusCode, name[not(. = '')][1])                 return                     concat('dataset', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;')                 ), ' '), '/&gt;')"/>
      <xsl:variable name="clid" select="@ref"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$allDatasetConcepts/valueDomain/conceptList[@id = $clid]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$allDatasetConcepts/valueDomain/conceptList[@id = $clid]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> ref='<xsl:text/>
                  <xsl:value-of select="$clid"/>
                  <xsl:text/>' SHALL have a corresponding conceptList element in the same project.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(*)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(*)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> ref='<xsl:text/>
                  <xsl:value-of select="$clid"/>
                  <xsl:text/>' SHALL NOT have children.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Dataset Concept List @id</svrl:text>
   <!--RULE -->
   <xsl:template match="dataset//valueDomain/conceptList[@id][not(ancestor::history | ancestor::*[@statusCode = $statusCodesInactive])]"
                 priority="1107"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset//valueDomain/conceptList[@id][not(ancestor::history | ancestor::*[@statusCode = $statusCodesInactive])]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;concept ', string-join((                 for $att in ancestor-or-self::concept[1]/(@id, @ref, name[not(. = '')][1], @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, ancestor-or-self::dataset[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::dataset[1]/@ident)                 return                     concat(name($att), '=&#34;', $att, '&#34;'),                  for $att in ancestor-or-self::dataset/(@id, @effectiveDate, @versionLabel, @statusCode, name[not(. = '')][1])                 return                     concat('dataset', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;')                 ), ' '), '/&gt;')"/>
      <xsl:variable name="clid" select="@id"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="$isDecorCompiled or $allTerminologyAssociations[@conceptId = $clid][@valueSet][not(@expirationDate)]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$isDecorCompiled or $allTerminologyAssociations[@conceptId = $clid][@valueSet][not(@expirationDate)]">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> id='<xsl:text/>
                  <xsl:value-of select="$clid"/>
                  <xsl:text/>' SHOULD have an active terminologyAssociation for a valueSet.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($isDecorCompiled) or ancestor::concept[1]/terminologyAssociation[@conceptId = $clid][@valueSet][not(@expirationDate)]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($isDecorCompiled) or ancestor::concept[1]/terminologyAssociation[@conceptId = $clid][@valueSet][not(@expirationDate)]">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> id='<xsl:text/>
                  <xsl:value-of select="$clid"/>
                  <xsl:text/>' SHOULD have an active terminologyAssociation for a valueSet compiled with the concept.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Dataset Concept TerminologyAssociation</svrl:text>
   <!--RULE -->
   <xsl:template match="dataset//valueDomain/conceptList/concept[@id][not(ancestor::history | ancestor::*[@statusCode = $statusCodesInactive])]"
                 priority="1105"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="dataset//valueDomain/conceptList/concept[@id][not(ancestor::history | ancestor::*[@statusCode = $statusCodesInactive])]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;concept ', string-join((                 for $att in ancestor-or-self::concept[1]/(@id, @ref, name[not(. = '')][1], @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, ancestor-or-self::dataset[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::dataset[1]/@ident)                 return                     concat(name($att), '=&#34;', $att, '&#34;'),                  for $att in ancestor-or-self::dataset/(@id, @effectiveDate, @versionLabel, @statusCode, name[not(. = '')][1])                 return                     concat('dataset', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;')                 ), ' '), '/&gt;')"/>
      <xsl:variable name="deid" select="ancestor::concept[1]/@id"/>
      <xsl:variable name="clid" select="parent::conceptList/(@id | @ref)"/>
      <xsl:variable name="clHasTerminoloyAssocation"
                    select="if ($isDecorCompiled) then ancestor::concept[1]/terminologyAssociation[@conceptId = $clid] else $allTerminologyAssociations[@conceptId = $clid]"/>
      <xsl:variable name="cid" select="@id"/>
      <xsl:variable name="cHasTerminoloyAssocation"
                    select="if ($isDecorCompiled) then ancestor::concept[1]/terminologyAssociation[@conceptId = $cid] else $allTerminologyAssociations[@conceptId = $cid]"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="$isDecorCompiled or not($clHasTerminoloyAssocation[not(@expirationDate)]) or $cHasTerminoloyAssocation[not(@expirationDate)]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$isDecorCompiled or not($clHasTerminoloyAssocation[not(@expirationDate)]) or $cHasTerminoloyAssocation[not(@expirationDate)]">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: conceptList/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> '<xsl:text/>
                  <xsl:value-of select="name[1]"/>
                  <xsl:text/>' SHOULD have an active terminologyAssociation as the conceptList has an active valueSet binding.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($isDecorCompiled) or not($clHasTerminoloyAssocation[not(@expirationDate)]) or $cHasTerminoloyAssocation[not(@expirationDate)]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($isDecorCompiled) or not($clHasTerminoloyAssocation[not(@expirationDate)]) or $cHasTerminoloyAssocation[not(@expirationDate)]">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> id='<xsl:text/>
                  <xsl:value-of select="$clid"/>
                  <xsl:text/>' SHOULD have an active terminologyAssociation compiled with the concept as the conceptList has an active valueSet binding.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Scenario</svrl:text>
   <!--RULE -->
   <xsl:template match="scenario[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]"
                 priority="1103"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="scenario[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;scenario ', string-join(for $att in (@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@id and @effectiveDate and @statusCode) or @ref"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@id and @effectiveDate and @statusCode) or @ref">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL have an @id and @effectiveDate and @statusCode, or a @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @ref)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@id and @ref)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @flexibility)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id and @flexibility)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @flexibility.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@ref) or not(@* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')]) | * except comment[parent::concept])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@ref) or not(@* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')]) | * except comment[parent::concept])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with a @ref SHALL NOT have other elements<xsl:text/>
                  <xsl:value-of select="if (self::concept) then ' other than comment' else ()"/>
                  <xsl:text/> or attributes than @name or @displayName. Found: <xsl:text/>
                  <xsl:value-of select="                     string-join(                     for $node in @* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')])                     return concat('@', name($node))                     , ', ')                     "/>
                  <xsl:text/>
                    .<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(@id) or * except (name | desc)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id) or * except (name | desc)">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD have content if it wants to define something.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="scenario[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/name"
                 priority="1102"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="scenario[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/name"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="scenario[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/desc"
                 priority="1101"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="scenario[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/desc"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="scenario[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/trigger"
                 priority="1100"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="scenario[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/trigger"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="scenario[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/condition"
                 priority="1099"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="scenario[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/condition"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Transaction</svrl:text>
   <!--RULE -->
   <xsl:template match="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]"
                 priority="1097"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;', name(), ' ', string-join(for $att in (@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@id and @effectiveDate and @statusCode) or @ref"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@id and @effectiveDate and @statusCode) or @ref">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL have an @id and @effectiveDate and @statusCode, or a @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @ref)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@id and @ref)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @flexibility)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id and @flexibility)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @flexibility.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@ref) or not(@* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')]) | * except comment[parent::concept])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@ref) or not(@* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')]) | * except comment[parent::concept])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with a @ref SHALL NOT have other elements<xsl:text/>
                  <xsl:value-of select="if (self::concept) then ' other than comment' else ()"/>
                  <xsl:text/> or attributes than @name or @displayName. Found: <xsl:text/>
                  <xsl:value-of select="                     string-join(                     for $node in @* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')])                     return concat('@', name($node))                     , ', ')                     "/>
                  <xsl:text/>
                    .<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(@id) or * except (name | desc)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id) or * except (name | desc)">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD have content if it wants to define something.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@model) or @type"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@model) or @type">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with an underlying model SHALL have a @type.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@label and (transaction or @type = 'group'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@label and (transaction or @type = 'group'))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> groups SHALL NOT have a schematron label.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(representingTemplate[@ref]) or @label"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(representingTemplate[@ref]) or @label">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with a representing template SHALL have a schematron label.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="scenarioStatus" select="ancestor::scenario/@statusCode"/>
      <xsl:variable name="allLabels" select="$allTransactions/@label"/>
      <xsl:variable name="currentLabel" select="@label"/>
      <!--REPORT error-->
      <xsl:if test="count($allLabels[. = $currentLabel]) gt 1">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="count($allLabels[. = $currentLabel]) gt 1">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> @label '<xsl:text/>
               <xsl:value-of select="$currentLabel"/>
               <xsl:text/>' SHALL be unique in this DECOR file.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'group') or parent::scenario"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'group') or parent::scenario">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> groups SHALL be immediate children of scenario.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'group' and transaction[@type = 'group'])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'group' and transaction[@type = 'group'])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> groups SHALL NOT contain transaction groups.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'initial') or parent::transaction[@type = 'group']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'initial') or parent::transaction[@type = 'group']">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> of type 'initial' SHALL be immediate children of a transaction group.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'initial') or (count(actors/actor[@role = 'sender']) ge 1 and count(actors/actor[@role = 'receiver']) ge 1)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'initial') or (count(actors/actor[@role = 'sender']) ge 1 and count(actors/actor[@role = 'receiver']) ge 1)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> of type 'initial' SHALL have at least 1 'sender' actor and at least 1 'receiver' actor.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'back') or parent::transaction[@type = 'group']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'back') or parent::transaction[@type = 'group']">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> of type 'back' SHALL be immediate children of a transaction group.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'back') or preceding-sibling::transaction[@type = 'initial'][not(@statusCode = $statusCodesInactive)]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'back') or preceding-sibling::transaction[@type = 'initial'][not(@statusCode = $statusCodesInactive)]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> of type 'back' SHALL be preceded by a transaction of type 'initial'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'back') or (count(actors/actor[@role = 'sender']) ge 1 and count(actors/actor[@role = 'receiver']) ge 1)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'back') or (count(actors/actor[@role = 'sender']) ge 1 and count(actors/actor[@role = 'receiver']) ge 1)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> of type 'back' SHALL have at least 1 'sender' actor and at least 1 'receiver' actor.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'stationary') or parent::transaction[@type = 'group']"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'stationary') or parent::transaction[@type = 'group']">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> of type 'stationary' SHALL be immediate children of a transaction group.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'stationary') or not(preceding-sibling::transaction[position() = 1][@type = 'back'][not(@statusCode = $statusCodesInactive)] | following-sibling::transaction[position() = 1][@type = 'back'][not(@statusCode = $statusCodesInactive)])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'stationary') or not(preceding-sibling::transaction[position() = 1][@type = 'back'][not(@statusCode = $statusCodesInactive)] | following-sibling::transaction[position() = 1][@type = 'back'][not(@statusCode = $statusCodesInactive)])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> of type 'stationary' SHALL NOT be preceded or followed by a transaction of type 'back'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'stationary') or (empty(actors/actor[not(@role = ('sender', 'stationary'))]) and actors/actor)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'stationary') or (empty(actors/actor[not(@role = ('sender', 'stationary'))]) and actors/actor)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> of type 'stationary' SHALL have only actors of type 'stationary'. Found: <xsl:text/>
                  <xsl:value-of select="string-join(distinct-values(actors/actor[not(@role = ('sender', 'stationary'))]/@role), ', ')"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/name"
                 priority="1096"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/name"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/desc"
                 priority="1095"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/desc"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/condition"
                 priority="1094"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/condition"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/dependencies"
                 priority="1093"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/dependencies"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/trigger"
                 priority="1092"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/trigger"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Transaction Actor Reference</svrl:text>
   <!--RULE -->
   <xsl:template match="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/actors/actor"
                 priority="1090"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="transaction[not(ancestor-or-self::*/@statusCode = $statusCodesInactive)]/actors/actor"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;transaction ', string-join(for $att in ancestor-or-self::transaction[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="actorId" select="@id"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$allScenarioActors[@id = $actorId]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$allScenarioActors[@id = $actorId]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: An actor reference SHALL reference an actor in the main list of actors for all scenarios. <xsl:text/>
                  <xsl:value-of select="$actorId"/>
                  <xsl:text/> (type='<xsl:text/>
                  <xsl:value-of select="@type"/>
                  <xsl:text/>') does not exist.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Transaction sourceDataset with concepts</svrl:text>
   <!--RULE -->
   <xsl:template match="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]"
                 priority="1088"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;transaction ', string-join(for $att in ancestor-or-self::transaction[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="dsid" select="@sourceDataset"/>
      <xsl:variable name="dsed" select="@sourceDatasetFlexibility[not(. = 'dynamic')]"/>
      <xsl:variable name="tmid" select="@ref"/>
      <xsl:variable name="tmed" select="@flexibility[not(. = 'dynamic')]"/>
      <xsl:variable name="qqid" select="@representingQuestionnnaire"/>
      <xsl:variable name="qqed"
                    select="@representingQuestionnnaireFlexibility[not(. = 'dynamic')]"/>
      <xsl:variable name="dsbyid" select="$allDatasets[@id = $dsid]"/>
      <xsl:variable name="ds"
                    select="if ($dsed) then $dsbyid[@effectiveDate = $dsed] else $dsbyid[@effectiveDate = max($dsbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="dsref" select="$allDatasets[@ref = $dsid]"/>
      <xsl:variable name="tmbyid" select="$allTemplates[@id = $tmid]"/>
      <xsl:variable name="tm"
                    select="if ($tmed) then $tmbyid[@effectiveDate = $tmed] else $tmbyid[@effectiveDate = max($tmbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="tmref" select="$allTemplates[@ref = $tmid]"/>
      <xsl:variable name="qqbyid" select="$allQuestionnaires[@id = $qqid]"/>
      <xsl:variable name="qq"
                    select="if ($qqed) then $qqbyid[@effectiveDate = $qqed] else $qqbyid[@effectiveDate = max($qqbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="qqref" select="$allQuestionnaires[@ref = $qqid]"/>
      <!--REPORT error-->
      <xsl:if test="starts-with($dsid, concat($projectId, '.')) and not($ds | $dsref)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="starts-with($dsid, concat($projectId, '.')) and not($ds | $dsref)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHALL point to an existing dataset or dataset reference @sourceDataset='<xsl:text/>
               <xsl:value-of select="$dsid"/>
               <xsl:text/>' @sourceDatasetFlexibility='<xsl:text/>
               <xsl:value-of select="($dsed, 'dynamic')[1]"/>
               <xsl:text/>'.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$dsed or count($dsbyid) le 1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$dsed or count($dsbyid) le 1">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@sourceDatasetFlexibility SHALL be present when multiple versions of the dataset exist.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($tmid) or ($tm | $tmref)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($tmid) or ($tm | $tmref)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL point to an existing template or template reference @ref='<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/>' @flexibility='<xsl:text/>
                  <xsl:value-of select="($tmed, 'dynamic')[1]"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dsid and $isDecorCompiled) or $ds"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dsid and $isDecorCompiled) or $ds">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL, in a compiled project, point to an existing dataset @sourceDataset='<xsl:text/>
                  <xsl:value-of select="$dsid"/>
                  <xsl:text/>' @sourceDatasetFlexibility='<xsl:text/>
                  <xsl:value-of select="($dsed, 'dynamic')[1]"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($tmid and $isDecorCompiled) or $tm"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($tmid and $isDecorCompiled) or $tm">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL, in a compiled project, point to an existing template @ref='<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/>' @flexibility='<xsl:text/>
                  <xsl:value-of select="($tmed, 'dynamic')[1]"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($tm) or $tm[context]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not($tm) or $tm[context]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL point to a template with a context element.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($qqid) or ($qq | $qqref)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($qqid) or ($qq | $qqref)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL point to an existing questionnaire or questionnaire reference @representingQuestionnaire='<xsl:text/>
                  <xsl:value-of select="$qqid"/>
                  <xsl:text/>' @representingQuestionnaireFlexibility='<xsl:text/>
                  <xsl:value-of select="($qqed, 'dynamic')[1]"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($qqid and $isDecorCompiled) or $qq"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($qqid and $isDecorCompiled) or $qq">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL, in a compiled project, point to an existing questionnaire @representingQuestionnaire='<xsl:text/>
                  <xsl:value-of select="$qqid"/>
                  <xsl:text/>' @representingQuestionnaireFlexibility='<xsl:text/>
                  <xsl:value-of select="($qqed, 'dynamic')[1]"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($ds/@statusCode = $statusCodesInactive)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($ds/@statusCode = $statusCodesInactive)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@sourceDataset='<xsl:text/>
                  <xsl:value-of select="$dsid"/>
                  <xsl:text/>' SHOULD while you may still edit it point to a new, draft, pending or final dataset. Found '<xsl:text/>
                  <xsl:value-of select="$ds/@statusCode"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($tm/@statusCode = $statusCodesInactive)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($tm/@statusCode = $statusCodesInactive)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@ref='<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/>' SHOULD while you may still edit it point to a new, draft, pending or final template. Found '<xsl:text/>
                  <xsl:value-of select="$tm/@statusCode"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept"
                 priority="1087"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;transaction ', string-join(for $att in ancestor-or-self::transaction[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@maximumMultiplicity = ('*', '?') or not(@minimumMultiplicity castable as xs:integer and @maximumMultiplicity castable as xs:integer) or xs:integer(@minimumMultiplicity) le xs:integer(@maximumMultiplicity)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@maximumMultiplicity = ('*', '?') or not(@minimumMultiplicity castable as xs:integer and @maximumMultiplicity castable as xs:integer) or xs:integer(@minimumMultiplicity) le xs:integer(@maximumMultiplicity)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> minimumMultiplicity='<xsl:text/>
                  <xsl:value-of select="@minimumMultiplicity"/>
                  <xsl:text/>' SHALL be less than or equal to maximumMultiplicity='<xsl:text/>
                  <xsl:value-of select="@maximumMultiplicity"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="refid"
                    select="if (@ref) then concat(' (ref=''', @ref, '''') else ()"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and @conformance = ('C', 'NP', 'O'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and @conformance = ('C', 'NP', 'O'))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and have @conformance = <xsl:text/>
                  <xsl:value-of select="@conformance"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and @minimumMultiplicity = '0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and @minimumMultiplicity = '0')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and have @minimumMultiplicity = 0.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and @maximumMultiplicity = '0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and @maximumMultiplicity = '0')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and have @maximumMultiplicity = 0.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@conformance = 'R' and @maximumMultiplicity = '0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@conformance = 'R' and @maximumMultiplicity = '0')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT have conformance = 'R' and have @maximumMultiplicity = 0.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and (attribute[@nullFlavor or @name = 'nullFlavor'][not(@isOptional = 'true')] | attribute[@name = 'xsi:nil'][@value = 'true'][not(@prohibited = 'true')]))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and (attribute[@nullFlavor or @name = 'nullFlavor'][not(@isOptional = 'true')] | attribute[@name = 'xsi:nil'][@value = 'true'][not(@prohibited = 'true')]))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and require @nullFlavor or @xsi:nil = true.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="@conformance[. = 'NP'] and (@minimumMultiplicity != '0' or @maximumMultiplicity != '0')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="@conformance[. = 'NP'] and (@minimumMultiplicity != '0' or @maximumMultiplicity != '0')">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>
               <xsl:text/>
               <xsl:value-of select="$refid"/>
               <xsl:text/>
               <xsl:text/>
               <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
               <xsl:text/> SHALL NOT have conformance=NP and min or max other than 0.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(self::concept[@conformance = 'C']) or condition or enableWhen"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::concept[@conformance = 'C']) or condition or enableWhen">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Conditional <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL have condition/enableWhen to explain the condition.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(self::element[@conformance = 'C']) or constraint or ../constraint"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::element[@conformance = 'C']) or constraint or ../constraint">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Conditional <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHOULD have (a sibling) constraint to explain the condition.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="rt" select="ancestor::representingTemplate[1]"/>
      <xsl:variable name="dsid" select="$rt/@sourceDataset"/>
      <xsl:variable name="dsed" select="$rt/@sourceDatasetFlexibility[not(. = 'dynamic')]"/>
      <xsl:variable name="deid" select="@ref"/>
      <xsl:variable name="deed" select="@flexibility[not(. = 'dynamic')]"/>
      <xsl:variable name="dsbyid" select="$allDatasets[@id = $dsid]"/>
      <xsl:variable name="ds"
                    select="if ($dsed) then $dsbyid[@effectiveDate = $dsed] else $dsbyid[@effectiveDate = max($dsbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="de" select="$ds//concept[@id = $deid]"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($ds) or $ds//concept[@id = $deid][not(ancestor::history | parent::conceptList)] or $ds//concept[@ref]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($ds) or $ds//concept[@id = $deid][not(ancestor::history | parent::conceptList)] or $ds//concept[@ref]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: transaction concept ref="<xsl:text/>
                  <xsl:value-of select="$deid"/>
                  <xsl:text/>", SHALL exist in dataset/@id='<xsl:text/>
                  <xsl:value-of select="$dsid"/>
                  <xsl:text/>' @effectiveDate='<xsl:text/>
                  <xsl:value-of select="$ds/@effectiveDate"/>
                  <xsl:text/>' (<xsl:text/>
                  <xsl:value-of select="$ds/name[string-length() gt 0][1]"/>
                  <xsl:text/>).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT warning-->
      <xsl:if test="$de[@statusCode = $statusCodesInactive]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$de[@statusCode = $statusCodesInactive]">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$deid"/>
               <xsl:text/>", SHOULD, while you may still edit it, point to a new, draft, pending or final concept, but found '<xsl:text/>
               <xsl:value-of select="$de/@statusCode"/>
               <xsl:text/>'.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:variable name="missingParentLevel"
                    select="$de/parent::concept[not(@id = $rt/concept/@ref)]"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($de) or not($missingParentLevel)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($de) or not($missingParentLevel)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: transaction concept ref="<xsl:text/>
                  <xsl:value-of select="$deid"/>
                  <xsl:text/>" is missing one or more parent groups active in the transaction. This may have happened because of moved concepts in the dataset. You should check this transaction and activate the missing parent concept groups.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT warning-->
      <xsl:if test="not(@enableBehavior) and count(enableWhen) gt 1">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(@enableBehavior) and count(enableWhen) gt 1">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$deid"/>
               <xsl:text/>" SHOULD specify enableBehavior (all | any) if you have more than one enableWhen defined.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT warning-->
      <xsl:if test="count(terminologyAssociation) gt 1">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="count(terminologyAssociation) gt 1">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$deid"/>
               <xsl:text/>" SHOULD NOT specify multiple value set bindings. Only 1 is allowed in FHIR profiles - unless you are slicing and the value sets are mutually exclusive - and questionnaires, and especially for the binding strength the semantics are unclear.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT warning-->
      <xsl:if test="terminologyAssociation/@strength = 'example'">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="terminologyAssociation/@strength = 'example'">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$deid"/>
               <xsl:text/>" SHOULD NOT specify binding strength example as example is unimplementable.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test=".[containedTransaction][(@*|*) except (@ref | @flexibility | @ident | @url | containedTransaction | context)]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test=".[containedTransaction][(@*|*) except (@ref | @flexibility | @ident | @url | containedTransaction | context)]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$deid"/>
               <xsl:text/>" with containedTransaction SHALL NOT have other content than context. Found: <xsl:text/>
               <xsl:value-of select="string-join(((@* | *) except (@ref | @flexibility | @ident | @url | containedTransaction | context))/name(), ', ')"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept/obligation"
                 priority="1086"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept/obligation"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;transaction ', string-join(for $att in ancestor-or-self::transaction[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--REPORT warning-->
      <xsl:if test="../@maximumMultiplicity[not(. = '*')][. castable as xs:integer] and @applicableNumber[not(. = '*')][. castable as xs:positiveInteger] and @applicableNumber[. castable as xs:positiveInteger] and xs:integer(@applicableNumber) gt xs:integer(../@maximumMultiplicity)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="../@maximumMultiplicity[not(. = '*')][. castable as xs:integer] and @applicableNumber[not(. = '*')][. castable as xs:positiveInteger] and @applicableNumber[. castable as xs:positiveInteger] and xs:integer(@applicableNumber) gt xs:integer(../@maximumMultiplicity)">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: transaction concept ref="<xsl:text/>
               <xsl:value-of select="../@ref"/>
               <xsl:text/>" specifies more repetitions (<xsl:text/>
               <xsl:value-of select="@applicableNumber"/>
               <xsl:text/>) on obligation #<xsl:text/>
               <xsl:value-of select="count(preceding-sibling::obligation) + 1"/>
               <xsl:text/> than the concept allows (<xsl:text/>
               <xsl:value-of select="../@maximumMultiplicity"/>
               <xsl:text/>).<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept/obligation/actor"
                 priority="1085"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept/obligation/actor"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;transaction ', string-join(for $att in ancestor-or-self::transaction[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@ref = ancestor::transaction[1]/actors/actor/@id"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@ref = ancestor::transaction[1]/actors/actor/@id">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: transaction concept ref="<xsl:text/>
                  <xsl:value-of select="../../@ref"/>
                  <xsl:text/>" obligation/actor SHALL match one of the actors associated with this transaction.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept/condition"
                 priority="1084"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept/condition"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;transaction ', string-join(for $att in ancestor-or-self::transaction[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@maximumMultiplicity = ('*', '?') or not(@minimumMultiplicity castable as xs:integer and @maximumMultiplicity castable as xs:integer) or xs:integer(@minimumMultiplicity) le xs:integer(@maximumMultiplicity)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@maximumMultiplicity = ('*', '?') or not(@minimumMultiplicity castable as xs:integer and @maximumMultiplicity castable as xs:integer) or xs:integer(@minimumMultiplicity) le xs:integer(@maximumMultiplicity)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> minimumMultiplicity='<xsl:text/>
                  <xsl:value-of select="@minimumMultiplicity"/>
                  <xsl:text/>' SHALL be less than or equal to maximumMultiplicity='<xsl:text/>
                  <xsl:value-of select="@maximumMultiplicity"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="refid"
                    select="if (@ref) then concat(' (ref=''', @ref, '''') else ()"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and @conformance = ('C', 'NP', 'O'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and @conformance = ('C', 'NP', 'O'))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and have @conformance = <xsl:text/>
                  <xsl:value-of select="@conformance"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and @minimumMultiplicity = '0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and @minimumMultiplicity = '0')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and have @minimumMultiplicity = 0.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and @maximumMultiplicity = '0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and @maximumMultiplicity = '0')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and have @maximumMultiplicity = 0.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@conformance = 'R' and @maximumMultiplicity = '0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@conformance = 'R' and @maximumMultiplicity = '0')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT have conformance = 'R' and have @maximumMultiplicity = 0.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and (attribute[@nullFlavor or @name = 'nullFlavor'][not(@isOptional = 'true')] | attribute[@name = 'xsi:nil'][@value = 'true'][not(@prohibited = 'true')]))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and (attribute[@nullFlavor or @name = 'nullFlavor'][not(@isOptional = 'true')] | attribute[@name = 'xsi:nil'][@value = 'true'][not(@prohibited = 'true')]))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and require @nullFlavor or @xsi:nil = true.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="@conformance[. = 'NP'] and (@minimumMultiplicity != '0' or @maximumMultiplicity != '0')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="@conformance[. = 'NP'] and (@minimumMultiplicity != '0' or @maximumMultiplicity != '0')">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>
               <xsl:text/>
               <xsl:value-of select="$refid"/>
               <xsl:text/>
               <xsl:text/>
               <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
               <xsl:text/> SHALL NOT have conformance=NP and min or max other than 0.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(self::concept[@conformance = 'C']) or condition or enableWhen"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::concept[@conformance = 'C']) or condition or enableWhen">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Conditional <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL have condition/enableWhen to explain the condition.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(self::element[@conformance = 'C']) or constraint or ../constraint"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::element[@conformance = 'C']) or constraint or ../constraint">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Conditional <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHOULD have (a sibling) constraint to explain the condition.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="textContents"
                    select="empty(normalize-space(string-join(text(), '')))"/>
      <!--REPORT error-->
      <xsl:if test="* and $textContents">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="* and $textContents">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="../@ref"/>
               <xsl:text/>", SHALL have conditions with text only or element only (no mixed content).<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept/condition/desc"
                 priority="1083"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept/condition/desc"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept/enableWhen"
                 priority="1082"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept/enableWhen"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;transaction ', string-join(for $att in ancestor-or-self::transaction[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="currentConceptId" select="../@ref"/>
      <xsl:variable name="questionId" select="@question"/>
      <xsl:variable name="rt" select="ancestor::representingTemplate[1]"/>
      <xsl:variable name="dsid" select="$rt/@sourceDataset"/>
      <xsl:variable name="dsed" select="$rt/@sourceDatasetFlexibility[not(. = 'dynamic')]"/>
      <xsl:variable name="deid" select="$questionId"/>
      <xsl:variable name="deed" select="()"/>
      <xsl:variable name="dsbyid" select="$allDatasets[@id = $dsid]"/>
      <xsl:variable name="ds"
                    select="if ($dsed) then $dsbyid[@effectiveDate = $dsed] else $dsbyid[@effectiveDate = max($dsbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="de1" select="$ds//concept[@id = $deid]"/>
      <xsl:variable name="de2"
                    select="if ($de1[inherit | contains][empty(name)]) then $allDatasetConcepts//concept[@id = $de1/(inherit/@ref | contains/@ref)][@effectiveDate = $de1/(inherit/@effectiveDate | contains/@flexibility)] else $de1"/>
      <xsl:variable name="de3"
                    select="if ($de2[inherit | contains][empty(name)]) then $allDatasetConcepts//concept[@id = $de2/(inherit/@ref | contains/@ref)][@effectiveDate = $de2/(inherit/@effectiveDate | contains/@flexibility)] else $de2"/>
      <xsl:variable name="de"
                    select="if ($de3[inherit | contains][empty(name)]) then $allDatasetConcepts//concept[@id = $de3/(inherit/@ref | contains/@ref)][@effectiveDate = $de3/(inherit/@effectiveDate | contains/@flexibility)] else $de3"/>
      <!--REPORT error-->
      <xsl:if test="ancestor::concept[@ref = $questionId]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="ancestor::concept[@ref = $questionId]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$currentConceptId"/>
               <xsl:text/>", SHALL NOT depend on itself for enableWhen.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="ancestor::representingTemplate/concept[@ref = $questionId]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="ancestor::representingTemplate/concept[@ref = $questionId]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: transaction concept ref="<xsl:text/>
                  <xsl:value-of select="$currentConceptId"/>
                  <xsl:text/>", SHALL depend on a concept contained in the same transaction for enableWhen. Found: <xsl:text/>
                  <xsl:value-of select="$questionId"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="$de/descendant-or-self::concept[@id = $currentConceptId]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$de/descendant-or-self::concept[@id = $currentConceptId]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$currentConceptId"/>
               <xsl:text/>", SHALL NOT depend on a contained concept contained for enableWhen. Found: <xsl:text/>
               <xsl:value-of select="$questionId"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$de[name][empty(valueDomain)]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$de[name][empty(valueDomain)]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$currentConceptId"/>
               <xsl:text/>", SHALL NOT depend on enableWhen/<xsl:text/>
               <xsl:value-of select="name(*)"/>
               <xsl:text/> when the question does not have a value domain.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="answerBoolean and $de[valueDomain][empty(valueDomain[@type = 'boolean'])]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="answerBoolean and $de[valueDomain][empty(valueDomain[@type = 'boolean'])]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$currentConceptId"/>
               <xsl:text/>", SHALL NOT depend on enableWhen/<xsl:text/>
               <xsl:value-of select="name(*)"/>
               <xsl:text/> when the question does not have a matching value domain (expected "boolean", found "<xsl:text/>
               <xsl:value-of select="$de/valueDomain/@type"/>
               <xsl:text/>").<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="answerDecimal and $de[valueDomain][empty(valueDomain[@type = ('count', 'decimal')])]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="answerDecimal and $de[valueDomain][empty(valueDomain[@type = ('count', 'decimal')])]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$currentConceptId"/>
               <xsl:text/>", SHALL NOT depend on enableWhen/<xsl:text/>
               <xsl:value-of select="name(*)"/>
               <xsl:text/> when the question does not have a matching value domain (expected "count" or "decimal", found "<xsl:text/>
               <xsl:value-of select="$de/valueDomain/@type"/>
               <xsl:text/>").<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="answerInteger and $de[valueDomain][empty(valueDomain[@type = 'count'])]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="answerInteger and $de[valueDomain][empty(valueDomain[@type = 'count'])]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$currentConceptId"/>
               <xsl:text/>", SHALL NOT depend on enableWhen/<xsl:text/>
               <xsl:value-of select="name(*)"/>
               <xsl:text/> when the question does not have a matching value domain (expected "count", found "<xsl:text/>
               <xsl:value-of select="$de/valueDomain/@type"/>
               <xsl:text/>").<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="answerDate and $de[valueDomain][empty(valueDomain[@type = 'date'])]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="answerDate and $de[valueDomain][empty(valueDomain[@type = 'date'])]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$currentConceptId"/>
               <xsl:text/>", SHALL NOT depend on enableWhen/<xsl:text/>
               <xsl:value-of select="name(*)"/>
               <xsl:text/> when the question does not have a matching value domain (expected "date", found "<xsl:text/>
               <xsl:value-of select="$de/valueDomain/@type"/>
               <xsl:text/>").<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="answerDate and $de[valueDomain][empty(valueDomain[@type = 'dateTime'])]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="answerDate and $de[valueDomain][empty(valueDomain[@type = 'dateTime'])]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$currentConceptId"/>
               <xsl:text/>", SHALL NOT depend on enableWhen/<xsl:text/>
               <xsl:value-of select="name(*)"/>
               <xsl:text/> when the question does not have a matching value domain (expected "dateTime", found "<xsl:text/>
               <xsl:value-of select="$de/valueDomain/@type"/>
               <xsl:text/>").<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="answerDateTime and $de[valueDomain][empty($de/valueDomain[@type = 'time'])]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="answerDateTime and $de[valueDomain][empty($de/valueDomain[@type = 'time'])]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$currentConceptId"/>
               <xsl:text/>", SHALL NOT depend on enableWhen/<xsl:text/>
               <xsl:value-of select="name(*)"/>
               <xsl:text/> when the question does not have a matching value domain (expected "time", found "<xsl:text/>
               <xsl:value-of select="$de/valueDomain/@type"/>
               <xsl:text/>").<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="answerTime and $de[valueDomain][empty(valueDomain[@type = ('string', 'text')])]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="answerTime and $de[valueDomain][empty(valueDomain[@type = ('string', 'text')])]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$currentConceptId"/>
               <xsl:text/>", SHALL NOT depend on enableWhen/<xsl:text/>
               <xsl:value-of select="name(*)"/>
               <xsl:text/> when the question does not have a matching value domain (expected "string" or "text", found "<xsl:text/>
               <xsl:value-of select="$de/valueDomain/@type"/>
               <xsl:text/>").<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="answerCoding and $de[valueDomain][empty(valueDomain[@type = ('code', 'ordinal')])]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="answerCoding and $de[valueDomain][empty(valueDomain[@type = ('code', 'ordinal')])]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$currentConceptId"/>
               <xsl:text/>", SHALL NOT depend on enableWhen/<xsl:text/>
               <xsl:value-of select="name(*)"/>
               <xsl:text/> when the question does not have a matching value domain (expected "code" or "ordinal", found "<xsl:text/>
               <xsl:value-of select="$de/valueDomain/@type"/>
               <xsl:text/>").<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="answerQuantity and $de[valueDomain][empty(valueDomain[@type = 'quantity'])]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="answerQuantity and $de[valueDomain][empty(valueDomain[@type = 'quantity'])]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: transaction concept ref="<xsl:text/>
               <xsl:value-of select="$currentConceptId"/>
               <xsl:text/>", SHALL NOT depend on enableWhen/<xsl:text/>
               <xsl:value-of select="name(*)"/>
               <xsl:text/> when the question does not have a matching value domain (expected "quantity", found "<xsl:text/>
               <xsl:value-of select="$de/valueDomain/@type"/>
               <xsl:text/>").<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept/identifierAssociation"
                 priority="1081"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="representingTemplate[not(ancestor-or-self::*/@statusCode = $statusCodesInactiveFinal)]/concept/identifierAssociation"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;transaction ', string-join(for $att in ancestor-or-self::transaction[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@conceptId = ../@ref"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@conceptId = ../@ref">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: transaction concept ref="<xsl:text/>
                  <xsl:value-of select="../@ref"/>
                  <xsl:text/>" SHALL match the contained identifierAssociation/@conceptId. Found: "<xsl:text/>
                  <xsl:value-of select="@conceptId"/>
                  <xsl:text/>".<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty(@conceptFlexibility) or empty(../@flexibility) or @conceptFlexibility = ../@flexibility"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty(@conceptFlexibility) or empty(../@flexibility) or @conceptFlexibility = ../@flexibility">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: transaction concept flexibility="<xsl:text/>
                  <xsl:value-of select="../@flexibility"/>
                  <xsl:text/>" SHALL match the contained identifierAssociation/@conceptFlexibility. Found: "<xsl:text/>
                  <xsl:value-of select="@conceptFlexibility"/>
                  <xsl:text/>".<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate identifierAssociation</svrl:text>
   <!--RULE -->
   <xsl:template match="ids/identifierAssociation[not(@expirationDate)] | representingTemplate/concept/identifierAssociation[not(@expirationDate)]"
                 priority="1079"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="ids/identifierAssociation[not(@expirationDate)] | representingTemplate/concept/identifierAssociation[not(@expirationDate)]"/>
      <xsl:variable name="deid" select="@conceptId"/>
      <xsl:variable name="deed" select="@conceptFlexibility[. castable as xs:dateTime]"/>
      <xsl:variable name="dsid" select="ancestor::representingTemplate/@sourceDataset"/>
      <xsl:variable name="dsed"
                    select="ancestor::representingTemplate/@sourceDatasetFlexibility[. castable as xs:dateTime]"/>
      <xsl:variable name="dsbyid" select="$allDatasets[@id = $dsid]"/>
      <xsl:variable name="ds"
                    select="if ($dsbyid and $dsed) then $dsbyid[@effectiveDate = $dsed] else if ($dsbyid) then $dsbyid[@effectiveDate = max($dsbyid/xs:dateTime(@effectiveDate))] else $allDatasets"/>
      <xsl:variable name="debyid" select="$ds//concept[@id = $deid]"/>
      <xsl:variable name="de"
                    select="if ($deed) then $debyid[@effectiveDate = $deed] else $debyid[@effectiveDate = max($debyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="inhbyid1"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $de/inherit/@ref]"/>
      <xsl:variable name="inhc1"
                    select="if ($de[@type]) then () else if ($de/inherit/@effectiveDate) then $inhbyid1[@effectiveDate = $de/inherit/@effectiveDate] else $inhbyid1[@effectiveDate = max($inhbyid1/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="inhbyid2"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $inhc1/inherit/@ref]"/>
      <xsl:variable name="inhc2"
                    select="if ($de[@type]) then () else if ($inhc1/inherit/@effectiveDate) then $inhbyid2[@effectiveDate = $inhc1/inherit/@effectiveDate] else $inhbyid2[@effectiveDate = max($inhbyid2/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="inhbyid3"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $inhc2/inherit/@ref]"/>
      <xsl:variable name="inhc3"
                    select="if ($de[@type]) then () else if ($inhc2/inherit/@effectiveDate) then $inhbyid3[@effectiveDate = $inhc2/inherit/@effectiveDate] else $inhbyid3[@effectiveDate = max($inhbyid3/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="detype" select="($de, $inhc1, $inhc2, $inhc3)[@type][1]"/>
      <xsl:variable name="dename"
                    select="($de, $inhc1, $inhc2, $inhc3)[name][1]/name[not(. = '')][1]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;identifierAssociation ', string-join((                 for $att in @*                 return                     concat(name($att), '=&#34;', $att, '&#34;'),                 for $att in $de[1]/(@id, @ref, $detype/@type, $dename, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, ancestor-or-self::dataset[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::dataset[1]/@ident)                 return                     concat('concept', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;'),                 for $att in $de[1]/ancestor-or-self::dataset/(@id, @effectiveDate, @versionLabel, @statusCode, name[not(. = '')][1])                 return                     concat('dataset', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;'),                 for $att in ancestor-or-self::transaction/(@id, @effectiveDate, @versionLabel, @statusCode, name[not(. = '')][1])                 return                     concat('transaction', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;')                 ), ' '), '/&gt;')"/>
      <!--REPORT info-->
      <xsl:if test="starts-with($deid, concat($projectId, '.')) and not($de)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="starts-with($deid, concat($projectId, '.')) and not($de)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHOULD point to an existing concept @id='<xsl:text/>
               <xsl:value-of select="$deid"/>
               <xsl:text/>'. <xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT warning-->
      <xsl:if test="$isDecorCompiled and $deid and not($de)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$isDecorCompiled and $deid and not($de)">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHOULD point to an existing dataset concept. In a compiled project, references should have been resolved.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($de) or $de[valueDomain[@type = 'identifier'] | inherit]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($de) or $de[valueDomain[@type = 'identifier'] | inherit]">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD point to a concept with a value domain of type identifier. <xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate terminologyAssociation</svrl:text>
   <!--RULE -->
   <xsl:template match="terminology/terminologyAssociation[not(@expirationDate)] | representingTemplate/concept/terminologyAssociation[not(@expirationDate)]"
                 priority="1077"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="terminology/terminologyAssociation[not(@expirationDate)] | representingTemplate/concept/terminologyAssociation[not(@expirationDate)]"/>
      <xsl:variable name="deid" select="@conceptId"/>
      <xsl:variable name="deed" select="@conceptFlexibility[not(. = 'dynamic')]"/>
      <xsl:variable name="dsid" select="ancestor::representingTemplate/@sourceDataset"/>
      <xsl:variable name="dsed"
                    select="ancestor::representingTemplate/@sourceDatasetFlexibility[. castable as xs:dateTime]"/>
      <xsl:variable name="dsbyid" select="$allDatasets[@id = $dsid]"/>
      <xsl:variable name="ds"
                    select="if ($dsbyid and $dsed) then $dsbyid[@effectiveDate = $dsed] else if ($dsbyid) then $dsbyid[@effectiveDate = max($dsbyid/xs:dateTime(@effectiveDate))] else $allDatasets"/>
      <xsl:variable name="debyid" select="$ds//concept[@id = $deid]"/>
      <xsl:variable name="de"
                    select="if ($deed) then $debyid[@effectiveDate = $deed] else $debyid[@effectiveDate = max($debyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="vsid" select="@valueSet"/>
      <xsl:variable name="vsed" select="@flexibility[not(. = 'dynamic')]"/>
      <xsl:variable name="clbyid" select="$allDatasetConceptLists[@id = $deid]"/>
      <xsl:variable name="clcbyid" select="$allDatasetConceptListConcepts[@id = $deid]"/>
      <xsl:variable name="inhbyid1"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $de/inherit/@ref]"/>
      <xsl:variable name="inhc1"
                    select="if ($de[@type]) then () else if ($de/inherit/@effectiveDate) then $inhbyid1[@effectiveDate = $de/inherit/@effectiveDate] else $inhbyid1[@effectiveDate = max($inhbyid1/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="inhbyid2"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $inhc1/inherit/@ref]"/>
      <xsl:variable name="inhc2"
                    select="if ($de[@type]) then () else if ($inhc1/inherit/@effectiveDate) then $inhbyid2[@effectiveDate = $inhc1/inherit/@effectiveDate] else $inhbyid2[@effectiveDate = max($inhbyid2/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="inhbyid3"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $inhc2/inherit/@ref]"/>
      <xsl:variable name="inhc3"
                    select="if ($de[@type]) then () else if ($inhc2/inherit/@effectiveDate) then $inhbyid3[@effectiveDate = $inhc2/inherit/@effectiveDate] else $inhbyid3[@effectiveDate = max($inhbyid3/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="detype" select="($de, $inhc1, $inhc2, $inhc3)[@type][1]"/>
      <xsl:variable name="dename"
                    select="($de, $inhc1, $inhc2, $inhc3)[name][1]/name[not(. = '')][1]"/>
      <xsl:variable name="vsbyid" select="$allValueSets[@id = $vsid]"/>
      <xsl:variable name="vs"
                    select="if ($vsed) then $vsbyid[@effectiveDate = $vsed] else $vsbyid[@effectiveDate = max($vsbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="vsref" select="$allValueSets[@ref = $vsid]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;terminologyAssociation ', string-join((                 for $att in @*                 return                         concat(name($att), '=&#34;', $att, '&#34;'),                 for $att in $de[1]/(@id, @ref, $detype/@type, $dename, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, ancestor-or-self::dataset[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::dataset[1]/@ident)                 return                         concat('concept', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;'),                 for $att in $de[1]/ancestor-or-self::dataset/(@id, @effectiveDate, @versionLabel, @statusCode, name[not(. = '')][1])                 return                     concat('dataset', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;'),                 for $att in ancestor-or-self::transaction/(@id, @effectiveDate, @type, @versionLabel, @statusCode, name[not(. = '')][1])                 return                     concat('transaction', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;')                 ), ' '), '/&gt;')"/>
      <!--REPORT info-->
      <xsl:if test="(starts-with($deid, concat($projectId, '.')) or $isDecorCompiled) and $vsid and not($clbyid)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="(starts-with($deid, concat($projectId, '.')) or $isDecorCompiled) and $vsid and not($clbyid)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHOULD point to an existing conceptList.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT info-->
      <xsl:if test="(starts-with($deid, concat($projectId, '.')) or $isDecorCompiled) and @code and not($de | $clcbyid)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="(starts-with($deid, concat($projectId, '.')) or $isDecorCompiled) and @code and not($de | $clcbyid)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHOULD point to an existing concept or concept within a conceptList.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(@strength[not(. = 'required')]) or $vsid"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@strength[not(. = 'required')]) or $vsid">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD NOT specify a binding strength unless it concerns a value set binding.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT warning-->
      <xsl:if test="starts-with($vsid, concat($projectId, '.')) and $vsid and not($vs | $vsref)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="starts-with($vsid, concat($projectId, '.')) and $vsid and not($vs | $vsref)">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHOULD point to an existing valueSet or valueSet reference.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$isDecorCompiled and $clbyid and $vsid and not($vs)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$isDecorCompiled and $clbyid and $vsid and not($vs)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHOULD point to an existing valueSet. In a compiled project, references should have been resolved.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@code | @valueSet | ancestor::transaction"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@code | @valueSet | ancestor::transaction">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL have a @code or a @valueSet.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@code and @valueSet)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@code and @valueSet)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @code and @valueSet.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@valueSet or not(@flexibility)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@valueSet or not(@flexibility)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have @flexibility without @valueSet.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($vsid) or matches($vsid, '^[0-9\.]+$') or starts-with($vsid, 'http')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($vsid) or matches($vsid, '^[0-9\.]+$') or starts-with($vsid, 'http')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@valueSet='<xsl:text/>
                  <xsl:value-of select="$vsid"/>
                  <xsl:text/>' SHALL be based on valueSet/@id. References by @name quickly become ambiguous.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="$isDecorCompiled and $vsid and empty($vs)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$isDecorCompiled and $vsid and empty($vs)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@valueSet='<xsl:text/>
               <xsl:value-of select="$vsid"/>
               <xsl:text/>' SHALL be represented in the compiled project.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT warning-->
      <xsl:if test="not($isDecorCompiled) and $vsid and empty($vs | $vsref)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not($isDecorCompiled) and $vsid and empty($vs | $vsref)">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@valueSet='<xsl:text/>
               <xsl:value-of select="$vsid"/>
               <xsl:text/>' SHOULD be represented in the project, either as definition or as reference. Please rerun this check on the compiled project.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate ValueSet</svrl:text>
   <!--RULE -->
   <xsl:template match="terminology/valueSet[not(@statusCode = $statusCodesInactive)]"
                 priority="1075"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="terminology/valueSet[not(@statusCode = $statusCodesInactive)]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;valueSet ', string-join(for $att in ancestor-or-self::valueSet[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, ancestor-or-self::valueSet[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::valueSet[1]/@ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@id and @effectiveDate and @statusCode) or @ref"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@id and @effectiveDate and @statusCode) or @ref">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL have an @id and @effectiveDate and @statusCode, or a @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @ref)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@id and @ref)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @flexibility)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id and @flexibility)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @flexibility.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@ref) or not(@* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')]) | * except comment[parent::concept])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@ref) or not(@* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')]) | * except comment[parent::concept])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with a @ref SHALL NOT have other elements<xsl:text/>
                  <xsl:value-of select="if (self::concept) then ' other than comment' else ()"/>
                  <xsl:text/> or attributes than @name or @displayName. Found: <xsl:text/>
                  <xsl:value-of select="                     string-join(                     for $node in @* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')])                     return concat('@', name($node))                     , ', ')                     "/>
                  <xsl:text/>
                    .<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(@id) or * except (name | desc)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id) or * except (name | desc)">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD have content if it wants to define something.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="HL7ValueSetIds" select="'2.16.840.1.113883.1.11.'"/>
      <xsl:variable name="NullFlavorValueSetIds"
                    select="('2.16.840.1.113883.1.11.10609', '2.16.840.1.113883.1.11.10610', '2.16.840.1.113883.1.11.10612', '2.16.840.1.113883.1.11.10614', '2.16.840.1.113883.1.11.10616', '2.16.840.1.113883.1.11.20352')"/>
      <!--REPORT error-->
      <xsl:if test="not(starts-with(@id, $HL7ValueSetIds)) and (conceptList/concept[@codeSystem = $oidNullFlavor] | conceptList/*[@ref = $NullFlavorValueSetIds][not(@exception = 'true')])">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(starts-with(@id, $HL7ValueSetIds)) and (conceptList/concept[@codeSystem = $oidNullFlavor] | conceptList/*[@ref = $NullFlavorValueSetIds][not(@exception = 'true')])">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> SHALL NOT contain NullFlavor codes as concepts. NullFlavor SHALL be exception.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Value Set concept list include and exclude statements</svrl:text>
   <!--RULE -->
   <xsl:template match="terminology/valueSet[not(@statusCode = $statusCodesInactive)]/conceptList/include | terminology/valueSet[not(@statusCode = $statusCodesInactive)]/conceptList/exclude"
                 priority="1073"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="terminology/valueSet[not(@statusCode = $statusCodesInactive)]/conceptList/include | terminology/valueSet[not(@statusCode = $statusCodesInactive)]/conceptList/exclude"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;valueSet ', string-join(for $att in ancestor-or-self::valueSet[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, ancestor-or-self::valueSet[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::valueSet[1]/@ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@flexibility) or (@ref | @codeSystem)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@flexibility) or (@ref | @codeSystem)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have @flexibility without @ref | @codeSystem.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@ref and (@op | @code | @codeSystem))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@ref and (@op | @code | @codeSystem))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @ref and (@op | @code | @codeSystem).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="terminology/valueSet[not(@statusCode = $statusCodesInactiveFinal)]/conceptList/concept/desc"
                 priority="1072"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="terminology/valueSet[not(@statusCode = $statusCodesInactiveFinal)]/conceptList/concept/desc"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="terminology/valueSet[not(@statusCode = $statusCodesInactiveFinal)]/conceptList/include/desc"
                 priority="1071"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="terminology/valueSet[not(@statusCode = $statusCodesInactiveFinal)]/conceptList/include/desc"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="terminology/valueSet[not(@statusCode = $statusCodesInactiveFinal)]/conceptList/exception/desc"
                 priority="1070"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="terminology/valueSet[not(@statusCode = $statusCodesInactiveFinal)]/conceptList/exception/desc"/>
      <xsl:variable name="locationContext"
                    select="concat(                 ' | Location &lt;',                  if (ancestor::template) then                     concat('template ', string-join(for $att in ancestor::template/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::valueSet) then                     concat('valueSet ', string-join(for $att in ancestor::valueSet/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else                 if (ancestor::codeSystem) then                     concat('codeSystem ', string-join(for $att in ancestor::codeSystem/@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '&gt; ')                 else (                     concat(name(..), ' ', string-join(for $att in ../@* return concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')                 )                 ,                  '&gt;'             )"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::*[name() = name(current())][@language = current()/@language])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with language SHALL be a different language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@language"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@language">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Each repetition of <xsl:text/>
                  <xsl:value-of select="name(..)"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be qualified with @language.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate CodeSystem</svrl:text>
   <!--RULE -->
   <xsl:template match="terminology/codeSystem[not(@statusCode = $statusCodesInactive)]"
                 priority="1068"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="terminology/codeSystem[not(@statusCode = $statusCodesInactive)]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;codeSystem ', string-join(for $att in (@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, ancestor-or-self::codeSystem[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::codeSystem[1]/@ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@id and @effectiveDate and @statusCode) or @ref"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@id and @effectiveDate and @statusCode) or @ref">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL have an @id and @effectiveDate and @statusCode, or a @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @ref)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@id and @ref)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @flexibility)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id and @flexibility)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @flexibility.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@ref) or not(@* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')]) | * except comment[parent::concept])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@ref) or not(@* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')]) | * except comment[parent::concept])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with a @ref SHALL NOT have other elements<xsl:text/>
                  <xsl:value-of select="if (self::concept) then ' other than comment' else ()"/>
                  <xsl:text/> or attributes than @name or @displayName. Found: <xsl:text/>
                  <xsl:value-of select="                     string-join(                     for $node in @* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')])                     return concat('@', name($node))                     , ', ')                     "/>
                  <xsl:text/>
                    .<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(@id) or * except (name | desc)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id) or * except (name | desc)">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD have content if it wants to define something.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="duplicateCodes"
                    select="distinct-values(conceptList/codedConcept[@code = preceding-sibling::codedConcept/@code]/@code)"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty($duplicateCodes)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($duplicateCodes)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="(@displayName, @name)[1]"/>
                  <xsl:text/> SHALL NOT define duplicate codes. Found: <xsl:text/>
                  <xsl:value-of select="$duplicateCodes"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT warning-->
      <xsl:if test="empty(conceptList/codedConcept[parent | child]) and conceptList/codedConcept[@level[not(. = '0')]]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="empty(conceptList/codedConcept[parent | child]) and conceptList/codedConcept[@level[not(. = '0')]]">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>
               <xsl:text/>
               <xsl:value-of select="(@displayName, @name)[1]"/>
               <xsl:text/> SHOULD define parent relationships instead of relying on levels. This is new from ART-DECOR v3.5.0 and up. Please consider upgrading the codeSystem.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT warning-->
      <xsl:if test="conceptList/codedConcept[empty(@statusCode)]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="conceptList/codedConcept[empty(@statusCode)]">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>
               <xsl:text/>
               <xsl:value-of select="(@displayName, @name)[1]"/>
               <xsl:text/> SHOULD define statusCode on every codedConcept. This is new from ART-DECOR v3.5.0 and up. Please consider upgrading the codeSystem.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="terminology/codeSystem[not(@statusCode = $statusCodesInactive)]/conceptList/codedConcept"
                 priority="1067"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="terminology/codeSystem[not(@statusCode = $statusCodesInactive)]/conceptList/codedConcept"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;codeSystem ', string-join(for $att in ancestor::codeSystem[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, ancestor-or-self::codeSystem[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::codeSystem[1]/@ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="theCode" select="@code"/>
      <xsl:variable name="theType" select="@type"/>
      <xsl:variable name="theLevel"
                    select="if (@level castable as xs:integer) then xs:integer(@level) else ()"/>
      <xsl:variable name="checkParentChild"
                    select="exists(../codedConcept[parent | child])"/>
      <xsl:variable name="checkLevelType" select="not($checkParentChild)"/>
      <xsl:variable name="childConceptsOfThisConceptByParent"
                    select="../codedConcept/parent[@code = $theCode]"/>
      <xsl:variable name="parentConceptsOfThisConceptByParent" select="parent"/>
      <xsl:variable name="nextFirstOtherHierarchy"
                    select="if ($checkParentChild) then () else (following-sibling::codedConcept[@level castable as xs:integer][xs:integer(@level) le $theLevel])[1]"/>
      <xsl:variable name="childConceptsOfThisConceptByLevel"
                    select="if ($checkParentChild) then () else following-sibling::codedConcept[@level castable as xs:integer][xs:integer(@level) = ($theLevel + 1)][not(preceding-sibling::codedConcept[@code = $nextFirstOtherHierarchy/@code])]"/>
      <xsl:variable name="parentByLevel"
                    select="if ($checkParentChild) then () else if ($theLevel gt 0) then preceding-sibling::codedConcept[@level castable as xs:integer][xs:integer(@level) lt $theLevel][1] else ()"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(preceding-sibling::codedConcept[@code = $theCode] | following-sibling::codedConcept[@code = $theCode])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(preceding-sibling::codedConcept[@code = $theCode] | following-sibling::codedConcept[@code = $theCode])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR Code system concept code '<xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/>' SHALL be unique in the code system.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@expirationDate[. castable as xs:dateTime][xs:dateTime(.) le current-dateTime()]) or not(@statusCode = ('active', 'final'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@expirationDate[. castable as xs:dateTime][xs:dateTime(.) le current-dateTime()]) or not(@statusCode = ('active', 'final'))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR Code system concept code '<xsl:text/>
                  <xsl:value-of select="@code"/>
                  <xsl:text/>' SHALL NOT have an expiration date and have status code <xsl:text/>
                  <xsl:value-of select="@statusCode"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$checkParentChild or not(@type = 'L' and $childConceptsOfThisConceptByLevel)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$checkParentChild or not(@type = 'L' and $childConceptsOfThisConceptByLevel)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR Code system concept code '<xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/>' SHALL NOT have type <xsl:text/>
                  <xsl:value-of select="$theType"/>
                  <xsl:text/> and have children. Expected A, S or D.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$checkParentChild or not($theLevel gt 0) or $parentByLevel[xs:integer(@level) = ($theLevel - 1)]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$checkParentChild or not($theLevel gt 0) or $parentByLevel[xs:integer(@level) = ($theLevel - 1)]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR Code system concept code '<xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/>' at level '<xsl:text/>
                  <xsl:value-of select="$theLevel"/>
                  <xsl:text/>' SHALL have a parent on level '<xsl:text/>
                  <xsl:value-of select="$theLevel - 1"/>
                  <xsl:text/>'. Found: <xsl:text/>
                  <xsl:value-of select="if ($parentByLevel) then concat('concept ''', $parentByLevel/@code, ''' at level ''', $parentByLevel/@level, '''') else 'none'"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="terminology/codeSystem[not(@statusCode = $statusCodesInactive)]/conceptList/codedConcept/parent"
                 priority="1066"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="terminology/codeSystem[not(@statusCode = $statusCodesInactive)]/conceptList/codedConcept/parent"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;codeSystem ', string-join(for $att in ancestor::codeSystem[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, ancestor-or-self::codeSystem[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::codeSystem[1]/@ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="theCode" select="../@code"/>
      <xsl:variable name="theParentCode" select="@code"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($theCode = $theParentCode)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($theCode = $theParentCode)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR Code system concept code '<xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/>' SHALL NOT declare itself as parent.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="../../codedConcept/@code = $theParentCode"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="../../codedConcept/@code = $theParentCode">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR Code system concept code '<xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/>' SHALL declare an existing parent. Parent <xsl:text/>
                  <xsl:value-of select="$theParentCode"/>
                  <xsl:text/> not found in the code system.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty(../../codedConcept/child) or ../../codedConcept[@code = $theParentCode]/child/@code = $theCode"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty(../../codedConcept/child) or ../../codedConcept[@code = $theParentCode]/child/@code = $theCode">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR Code system concept code '<xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/>' declares parent <xsl:text/>
                  <xsl:value-of select="$theParentCode"/>
                  <xsl:text/> but that parent does not claim <xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/> as its child.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="terminology/codeSystem[not(@statusCode = $statusCodesInactive)]/conceptList/codedConcept/child"
                 priority="1065"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="terminology/codeSystem[not(@statusCode = $statusCodesInactive)]/conceptList/codedConcept/child"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;codeSystem ', string-join(for $att in ancestor::codeSystem[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, ancestor-or-self::codeSystem[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::codeSystem[1]/@ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="theCode" select="../@code"/>
      <xsl:variable name="theChildCode" select="@code"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($theCode = $theChildCode)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($theCode = $theChildCode)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR Code system concept code '<xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/>' SHALL NOT declare itself as child.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="../../codedConcept/@code = $theChildCode"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="../../codedConcept/@code = $theChildCode">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR Code system concept code '<xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/>' SHALL declare an existing child. Child <xsl:text/>
                  <xsl:value-of select="$theChildCode"/>
                  <xsl:text/> not found in the code system.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty(../../codedConcept/parent) or ../../codedConcept[@code = $theChildCode]/parent/@code = $theCode"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty(../../codedConcept/parent) or ../../codedConcept[@code = $theChildCode]/parent/@code = $theCode">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR Code system concept code '<xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/>' declares child <xsl:text/>
                  <xsl:value-of select="$theChildCode"/>
                  <xsl:text/> but that child does not claim <xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/> as its parent.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="terminology/codeSystem[not(@statusCode = $statusCodesInactive)]/conceptList/codedConcept/property"
                 priority="1064"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="terminology/codeSystem[not(@statusCode = $statusCodesInactive)]/conceptList/codedConcept/property"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;codeSystem ', string-join(for $att in ancestor::codeSystem[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @versionLabel, ancestor-or-self::codeSystem[1]/@url[not(. = $deeplinkprefixservices)], ancestor-or-self::codeSystem[1]/@ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="theCode" select="../@code"/>
      <xsl:variable name="thePropertyCode" select="@code"/>
      <xsl:variable name="theDefinedProperty"
                    select="ancestor::codeSystem/property[@code = $thePropertyCode]"/>
      <xsl:variable name="thePropertyType" select="if (*) then name(*[1]) else ()"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$theDefinedProperty"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="$theDefinedProperty">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR Code system concept code '<xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/>' SHALL only use declared properties. Property <xsl:text/>
                  <xsl:value-of select="$thePropertyCode"/>
                  <xsl:text/> not found in the code system properties.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($theDefinedProperty) or $theDefinedProperty[upper-case(concat('value', @type)) = upper-case($thePropertyType)]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($theDefinedProperty) or $theDefinedProperty[upper-case(concat('value', @type)) = upper-case($thePropertyType)]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR Code system concept code '<xsl:text/>
                  <xsl:value-of select="$theCode"/>
                  <xsl:text/>' SHALL have property type "<xsl:text/>
                  <xsl:value-of select="$theDefinedProperty/@type"/>
                  <xsl:text/>". Found "<xsl:text/>
                  <xsl:value-of select="$thePropertyType"/>
                  <xsl:text/>".<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template Association Definition</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/templateAssociation" priority="1062" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/templateAssociation"/>
      <xsl:variable name="tmid" select="@templateId"/>
      <xsl:variable name="tmed" select="@effectiveDate"/>
      <xsl:variable name="tmbyid" select="$allTemplates[@id = $tmid]"/>
      <xsl:variable name="tm"
                    select="if ($tmed) then $tmbyid[@effectiveDate = $tmed] else $tmbyid[@effectiveDate = max($tmbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="tmref" select="$allTemplates[@ref = $tmid]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;templateAssociation ', string-join(for $att in (@*, ($tm, $tmref)[1]/(@name, @statusCode, @versionLabel))                 return                 concat(name($att), '=&#34;', $att, '&#34;')                 , ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$tm | $tmref"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="$tm | $tmref">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL be bound to an existing template or template reference.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count($allTemplateAssociations[@templateId = $tmid][@effectiveDate = $tmed]) le 1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count($allTemplateAssociations[@templateId = $tmid][@effectiveDate = $tmed]) le 1">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: There SHALL be 0..1 template association per template (<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/> - <xsl:text/>
                  <xsl:value-of select="$tmed"/>
                  <xsl:text/>).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template Association Concept</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/templateAssociation/concept"
                 priority="1060"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/templateAssociation/concept"/>
      <xsl:variable name="deid" select="@ref"/>
      <xsl:variable name="deed" select="@effectiveDate[not(. = 'dynamic')]"/>
      <xsl:variable name="tmid" select="parent::templateAssociation/@templateId"/>
      <xsl:variable name="tmed" select="parent::templateAssociation/@effectiveDate"/>
      <xsl:variable name="elid" select="@elementId"/>
      <xsl:variable name="debyid" select="$allDatasetConcepts[@id = $deid]"/>
      <xsl:variable name="deNewest" select="max($debyid/xs:dateTime(@effectiveDate))"/>
      <xsl:variable name="de"
                    select="if ($deed) then $debyid[@effectiveDate = $deed] else $debyid[@effectiveDate = $deNewest]"/>
      <xsl:variable name="deIsNewest" select="$de/@effectiveDate = $deNewest"/>
      <xsl:variable name="inhbyid1"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $de/inherit/@ref]"/>
      <xsl:variable name="inhc1"
                    select="if ($de[@type]) then () else if ($de/inherit/@effectiveDate) then $inhbyid1[@effectiveDate = $de/inherit/@effectiveDate] else $inhbyid1[@effectiveDate = max($inhbyid1/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="inhbyid2"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $inhc1/inherit/@ref]"/>
      <xsl:variable name="inhc2"
                    select="if ($de[@type]) then () else if ($inhc1/inherit/@effectiveDate) then $inhbyid2[@effectiveDate = $inhc1/inherit/@effectiveDate] else $inhbyid2[@effectiveDate = max($inhbyid2/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="inhbyid3"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $inhc2/inherit/@ref]"/>
      <xsl:variable name="inhc3"
                    select="if ($de[@type]) then () else if ($inhc2/inherit/@effectiveDate) then $inhbyid3[@effectiveDate = $inhc2/inherit/@effectiveDate] else $inhbyid3[@effectiveDate = max($inhbyid3/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="detype" select="($de, $inhc1, $inhc2, $inhc3)[@type][1]"/>
      <xsl:variable name="dename"
                    select="($de, $inhc1, $inhc2, $inhc3)[name][1]/name[not(. = '')][1]"/>
      <xsl:variable name="tmbyid" select="$allTemplates[@id = $tmid]"/>
      <xsl:variable name="tm"
                    select="if ($tmed) then $tmbyid[@effectiveDate = $tmed] else $tmbyid[@effectiveDate = max($tmbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="tmref" select="$allTemplates[@ref = $tmid]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;templateAssociation ', string-join(for $att in (ancestor::templateAssociation/(@templateId, @effectiveDate), ($tm, $tmref)[1]/(@name, @statusCode, @versionLabel)) return concat(name($att), '=&#34;', $att, '&#34;'), ' '),                     ' ',                     string-join((                     for $att in (@ref, @effectiveDate, $detype/@type, $dename, $de/@statusCode, $de/@versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                          return                              concat('concept', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;')                     ), ' '),                     '/&gt;')"/>
      <xsl:variable name="el"
                    select="$tm//element[@id = $elid] | $tm//attribute[@id = $elid]"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@elementId and not(@elementPath)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@elementId and not(@elementPath)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: templateAssociation <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL only have an @elementId.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="$isDecorCompiled or $tm[@statusCode = $statusCodesInactive] | @ident | $de"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$isDecorCompiled or $tm[@statusCode = $statusCodesInactive] | @ident | $de">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: templateAssociation <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be bound to a dataset concept.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($tm) or $tm[@statusCode = $statusCodesInactive] or $el"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($tm) or $tm[@statusCode = $statusCodesInactive] or $el">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: templateAssociation <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="if ($tm/@ident) then concat(' (repository ', $tm/@ident, ')') else ()"/>
                  <xsl:text/> SHALL be bound to an element with the indicated id '<xsl:text/>
                  <xsl:value-of select="$elid"/>
                  <xsl:text/>' in the indicated template with the same id and effectiveDate.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($el) or not($detype[@type = 'item']) or ($detype/valueDomain[@type = 'boolean'] | $el[@datatype] | $el/attribute[@name = 'negationInd'] | $el/attribute[@negationInd])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($el) or not($detype[@type = 'item']) or ($detype/valueDomain[@type = 'boolean'] | $el[@datatype] | $el/attribute[@name = 'negationInd'] | $el/attribute[@negationInd])">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: templateAssociation <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="if ($tm/@ident) then concat(' (repository ', $tm/@ident, ')') else ()"/>
                  <xsl:text/> '<xsl:text/>
                  <xsl:value-of select="$detype/name[1]"/>
                  <xsl:text/>' type='item' (<xsl:text/>
                  <xsl:value-of select="$detype/valueDomain/@type"/>
                  <xsl:text/>) corresponds to template <xsl:text/>
                  <xsl:value-of select="name($el[1])"/>
                  <xsl:text/> (<xsl:text/>
                  <xsl:value-of select="$el[1]/@name"/>
                  <xsl:text/>) without datatype or negationInd.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="assocsbyid"
                    select="if ($isDecorCompiled) then $de/terminologyAssociation[@conceptId = $deid] else $allTerminologyAssociations[@conceptId = $de/@id]"/>
      <xsl:variable name="assocs"
                    select="if ($deIsNewest) then $assocsbyid[@conceptFlexibility = $de/@effectiveDate] | $assocsbyid[not(@conceptFlexibility)] | $assocsbyid[@conceptFlexibility = 'dynamic'] else $assocsbyid[@conceptFlexibility = $de/@effectiveDate]"/>
      <xsl:variable name="tempElement"
                    select="$el[matches(@name, '^[^:]+:value')][matches(parent::element/lower-case(@name), '^[^:]+:\S*observation')]/preceding-sibling::element[matches(@name, '^[^:]+:code')]"/>
      <xsl:variable name="theCodes"
                    select="$tempElement/vocabulary/concat(@code, ' / ', @codeSystem), string-join(($tempElement/attribute[@name = 'code']/@value, $tempElement/attribute[@name = 'codeSystem']/@value), ' / ')[not(. = '')]"/>
      <!--REPORT info-->
      <xsl:if test="starts-with($deid, concat($projectId, '.')) and @code and not($de)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="starts-with($deid, concat($projectId, '.')) and @code and not($de)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: templateAssociation <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@conceptId='<xsl:text/>
               <xsl:value-of select="$deid"/>
               <xsl:text/>' SHOULD point to an existing concept.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT info-->
      <xsl:if test="not(starts-with($deid, concat($projectId, '.'))) and @code and not($de)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(starts-with($deid, concat($projectId, '.'))) and @code and not($de)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: templateAssociation <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@conceptId='<xsl:text/>
               <xsl:value-of select="$deid"/>
               <xsl:text/>' from different project is not pointing to an existing concept.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($tempElement) or not($assocs) or $tm[@statusCode = $statusCodesInactive] or $assocs[concat(@code, ' / ', @codeSystem) = $theCodes]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($tempElement) or not($assocs) or $tm[@statusCode = $statusCodesInactive] or $assocs[concat(@code, ' / ', @codeSystem) = $theCodes]">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: templateAssociation element '<xsl:text/>
                  <xsl:value-of select="$el/../@name"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="$el/@name"/>
                  <xsl:text/>' is under an observation with a different code than the dataset concept <xsl:text/>
                  <xsl:value-of select="$deid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="concat(' ''', $detype/name[string-length() gt 0][1], '''')"/>
                  <xsl:text/>. Found code / codeSystem="<xsl:text/>
                  <xsl:value-of select="string-join($theCodes, ' or ')"/>
                  <xsl:text/>", expected code / codeSystem="<xsl:text/>
                  <xsl:value-of select="string-join(distinct-values($assocs/concat(@code, ' / ', @codeSystem)), ' or ')"/>
                  <xsl:text/>".<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Questionnaire Association Definition</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/questionnaireAssociation" priority="1058" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/questionnaireAssociation"/>
      <xsl:variable name="tmid" select="@questionnaireId"/>
      <xsl:variable name="tmed" select="@questionnaiteEffectiveDate"/>
      <xsl:variable name="tmbyid" select="$allQuestionnaires[@id = $tmid]"/>
      <xsl:variable name="tm"
                    select="if ($tmed) then $tmbyid[@effectiveDate = $tmed] else $tmbyid[@effectiveDate = max($tmbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="tmref" select="$allQuestionnaires[@ref = $tmid]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;questionnaireAssociation ', string-join(for $att in (@*, ($tm, $tmref)[1]/(@name, @statusCode, @versionLabel))                 return                 concat(name($att), '=&#34;', $att, '&#34;')                 , ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$tm | $tmref"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="$tm | $tmref">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL be bound to an existing questionnaire or questionnaire reference.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count($allQuestionnaireAssociations[@templateId = $tmid][@effectiveDate = $tmed]) le 1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count($allQuestionnaireAssociations[@templateId = $tmid][@effectiveDate = $tmed]) le 1">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: There SHALL be 0..1 questionnaire association per questionnaire (<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/> - <xsl:text/>
                  <xsl:value-of select="$tmed"/>
                  <xsl:text/>).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Questionnaire Association Concept</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/questionnaireAssociation/concept"
                 priority="1056"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/questionnaireAssociation/concept"/>
      <xsl:variable name="deid" select="@ref"/>
      <xsl:variable name="deed" select="@effectiveDate[not(. = 'dynamic')]"/>
      <xsl:variable name="tmid" select="parent::questionnaireAssociation/@questionnaireId"/>
      <xsl:variable name="tmed"
                    select="parent::questionnaireAssociation/@questionnaireEffectiveDate"/>
      <xsl:variable name="elid" select="@elementId"/>
      <xsl:variable name="debyid" select="$allDatasetConcepts[@id = $deid]"/>
      <xsl:variable name="deNewest" select="max($debyid/xs:dateTime(@effectiveDate))"/>
      <xsl:variable name="de"
                    select="if ($deed) then $debyid[@effectiveDate = $deed] else $debyid[@effectiveDate = $deNewest]"/>
      <xsl:variable name="deIsNewest" select="$de/@effectiveDate = $deNewest"/>
      <xsl:variable name="inhbyid1"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $de/inherit/@ref]"/>
      <xsl:variable name="inhc1"
                    select="if ($de[@type]) then () else if ($de/inherit/@effectiveDate) then $inhbyid1[@effectiveDate = $de/inherit/@effectiveDate] else $inhbyid1[@effectiveDate = max($inhbyid1/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="inhbyid2"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $inhc1/inherit/@ref]"/>
      <xsl:variable name="inhc2"
                    select="if ($de[@type]) then () else if ($inhc1/inherit/@effectiveDate) then $inhbyid2[@effectiveDate = $inhc1/inherit/@effectiveDate] else $inhbyid2[@effectiveDate = max($inhbyid2/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="inhbyid3"
                    select="if ($de[@type]) then () else $allDatasetConcepts[@id = $inhc2/inherit/@ref]"/>
      <xsl:variable name="inhc3"
                    select="if ($de[@type]) then () else if ($inhc2/inherit/@effectiveDate) then $inhbyid3[@effectiveDate = $inhc2/inherit/@effectiveDate] else $inhbyid3[@effectiveDate = max($inhbyid3/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="detype" select="($de, $inhc1, $inhc2, $inhc3)[@type][1]"/>
      <xsl:variable name="dename"
                    select="($de, $inhc1, $inhc2, $inhc3)[name][1]/name[not(. = '')][1]"/>
      <xsl:variable name="tmbyid" select="$allQuestionnaires[@id = $tmid]"/>
      <xsl:variable name="tm"
                    select="if ($tmed) then $tmbyid[@effectiveDate = $tmed] else $tmbyid[@effectiveDate = max($tmbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="tmref" select="$allQuestionnaires[@ref = $tmid]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;questionnaireAssociation ', string-join(for $att in (ancestor::questionnaireAssociation/(@templateId, @effectiveDate), ($tm, $tmref)[1]/(@name, @statusCode, @versionLabel)) return concat(name($att), '=&#34;', $att, '&#34;'), ' '),                 ' ',                 string-join((                 for $att in (@ref, @effectiveDate, $detype/@type, $dename, $de/@statusCode, $de/@versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                  return                  concat('concept', upper-case(substring(name($att), 1, 1)), substring(name($att), 2), '=&#34;', $att, '&#34;')                 ), ' '),                 '/&gt;')"/>
      <xsl:variable name="el" select="$tm//item[@linkId = $elid]"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@elementId and not(@elementPath)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@elementId and not(@elementPath)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaireAssociation <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL only have an @elementId.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="$tm[@statusCode = $statusCodesInactive] | @ident | $de"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$tm[@statusCode = $statusCodesInactive] | @ident | $de">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: questionnaireAssociation <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD be bound to a dataset concept.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($tm) or $tm[@statusCode = $statusCodesInactive] or $el"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($tm) or $tm[@statusCode = $statusCodesInactive] or $el">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaireAssociation <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="if ($tm/@ident) then concat(' (repository ', $tm/@ident, ')') else ()"/>
                  <xsl:text/> SHALL be bound to an item with the indicated linkId '<xsl:text/>
                  <xsl:value-of select="$elid"/>
                  <xsl:text/>' in the indicated questionnaire with the same id and effectiveDate.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="assocsbyid"
                    select="if ($isDecorCompiled) then $de/questionnaireAssociation[@conceptId = $deid] else $allTerminologyAssociations[@conceptId = $de/@id]"/>
      <xsl:variable name="assocs"
                    select="if ($deIsNewest) then $assocsbyid[@conceptFlexibility = $de/@effectiveDate] | $assocsbyid[not(@conceptFlexibility)] | $assocsbyid[@conceptFlexibility = 'dynamic'] else $assocsbyid[@conceptFlexibility = $de/@effectiveDate]"/>
      <xsl:variable name="theCodes" select="$el/code/@code"/>
      <!--REPORT info-->
      <xsl:if test="$isDecorCompiled or starts-with($deid, concat($projectId, '.')) and @code and not($de)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$isDecorCompiled or starts-with($deid, concat($projectId, '.')) and @code and not($de)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: questionnaireAssociation <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@conceptId='<xsl:text/>
               <xsl:value-of select="$deid"/>
               <xsl:text/>' SHOULD point to an existing concept.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT info-->
      <xsl:if test="not(starts-with($deid, concat($projectId, '.'))) and @code and not($de)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(starts-with($deid, concat($projectId, '.'))) and @code and not($de)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: questionnaireAssociation <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@conceptId='<xsl:text/>
               <xsl:value-of select="$deid"/>
               <xsl:text/>' from different project is not pointing to an existing concept.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($assocs) or $tm[@statusCode = $statusCodesInactive] or $assocs[@code = $theCodes]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($assocs) or $tm[@statusCode = $statusCodesInactive] or $assocs[@code = $theCodes]">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: questionnaireAssociation item '<xsl:text/>
                  <xsl:value-of select="$el/@linkId"/>
                  <xsl:text/>/<xsl:text/>
                  <xsl:value-of select="$el/text[1]"/>
                  <xsl:text/>' has a different code than the dataset concept <xsl:text/>
                  <xsl:value-of select="$deid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="concat(' ''', $detype/name[string-length() gt 0][1], '''')"/>
                  <xsl:text/>. Found code="<xsl:text/>
                  <xsl:value-of select="string-join($theCodes, ' or ')"/>
                  <xsl:text/>", expected code="<xsl:text/>
                  <xsl:value-of select="string-join(distinct-values($assocs/@code), ' or ')"/>
                  <xsl:text/>".<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate StructureDefinition Association Concept</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/structuredefinition/concept"
                 priority="1054"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/structuredefinition/concept"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;structuredefinition ', string-join(for $att in ancestor::structuredefinition/(@displayName, @id, @version, @url[not(. = $deeplinkprefixservices)])                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@elementId | @elementPath) and not(@elementId and @elementPath)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@elementId | @elementPath) and not(@elementId and @elementPath)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: A structuredefinition association SHALL have exclusively either @elementId or @elementPath, not both.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/template[not(@statusCode = $statusCodesInactive)]"
                 priority="1052"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/template[not(@statusCode = $statusCodesInactive)]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;template ', string-join(for $att in ancestor-or-self::template[1]/(@id, @ref, @name, @displayName, @effectiveDate, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@id and @effectiveDate and @statusCode) or @ref"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@id and @effectiveDate and @statusCode) or @ref">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL have an @id and @effectiveDate and @statusCode, or a @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @ref)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@id and @ref)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @flexibility)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id and @flexibility)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @flexibility.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@ref) or not(@* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')]) | * except comment[parent::concept])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@ref) or not(@* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')]) | * except comment[parent::concept])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with a @ref SHALL NOT have other elements<xsl:text/>
                  <xsl:value-of select="if (self::concept) then ' other than comment' else ()"/>
                  <xsl:text/> or attributes than @name or @displayName. Found: <xsl:text/>
                  <xsl:value-of select="                     string-join(                     for $node in @* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')])                     return concat('@', name($node))                     , ', ')                     "/>
                  <xsl:text/>
                    .<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(@id) or * except (name | desc)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id) or * except (name | desc)">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD have content if it wants to define something.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tmid" select="@id"/>
      <xsl:variable name="contextElementTop"
                    select="element[matches(@name, '^([^:]+:)?templateId(\[.*)?$')][attribute[not(@isOptional = 'true')][not(@prohibited = 'true')][@root = $tmid or (@name = 'root' and @value = $tmid)]]"/>
      <xsl:variable name="contextElementSub"
                    select="*/element[matches(@name, '^([^:]+:)?templateId(\[.*)?$')][attribute[not(@isOptional = 'true')][not(@prohibited = 'true')][@root = $tmid or (@name = 'root' and @value = $tmid)]]"/>
      <!--REPORT warning-->
      <xsl:if test="(context[@id = '*'] and $contextElementTop[empty(@minimumMultiplicity) or @minimumMultiplicity = '0']) or (context[@id = '**'] and $contextElementSub[empty(@minimumMultiplicity) or @minimumMultiplicity = '0'])">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="(context[@id = '*'] and $contextElementTop[empty(@minimumMultiplicity) or @minimumMultiplicity = '0']) or (context[@id = '**'] and $contextElementSub[empty(@minimumMultiplicity) or @minimumMultiplicity = '0'])">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: template/context <xsl:text/>
               <xsl:value-of select="context/@id"/>
               <xsl:text/> with the matching templateId element with @root=<xsl:text/>
               <xsl:value-of select="$tmid"/>
               <xsl:text/> has minimum cardinality 0 instead of 1.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(context[@id = '*']) or $contextElementTop"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(context[@id = '*']) or $contextElementTop">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template/context <xsl:text/>
                  <xsl:value-of select="context/@id"/>
                  <xsl:text/> SHALL have a top level, element with minimum cardinality &gt; 0, named templateId (e.g. hl7:templateId) with a required attribute @root id (or name value pair) of that template.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(context[@id = '**']) or $contextElementSub"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(context[@id = '**']) or $contextElementSub">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template/context <xsl:text/>
                  <xsl:value-of select="context/@id"/>
                  <xsl:text/> SHALL have, immediately under the top level element, an element with minimum cardinality &gt; 0, named templateId (e.g. hl7:templateId) with a required attribute @root id (or name value pair) of that template.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(context[@path = ('*', '**')])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(context[@path = ('*', '**')])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Template context path SHALL be '/','//', or an xpath expression. Found '<xsl:text/>
                  <xsl:value-of select="context/@path"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(context[@path = ('**')]) or .[element][count(attribute | element | include | choice) = 1]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(context[@path = ('**')]) or .[element][count(attribute | element | include | choice) = 1]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: If template context id = '**' then template SHALL have exactly 1 element and SHALL NOT have other top level attributes/includes/choices. Found '<xsl:text/>
                  <xsl:value-of select="count(attribute | element | include | choice)"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and (@*[name() = ('ref', 'flexibility')]))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id and (@*[name() = ('ref', 'flexibility')]))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: A template with a @id SHALL NOT have attributes @ref or @flexibility.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@ref and (@*[not(name() = ('ref', 'name', 'displayName', 'url', 'ident'))][empty(namespace-uri())] or *[not(name() = 'desc')]))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@ref and (@*[not(name() = ('ref', 'name', 'displayName', 'url', 'ident'))][empty(namespace-uri())] or *[not(name() = 'desc')]))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: A template with a @ref SHALL NOT have other attributes than @name or @displayName and MAY have a description.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@ref or (@effectiveDate and @statusCode)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@ref or (@effectiveDate and @statusCode)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: A template SHALL have @ref or (@effectiveDate and @statusCode).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(ends-with(element[1]/@name, 'ClinicalDocument')) or context"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(ends-with(element[1]/@name, 'ClinicalDocument')) or context">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: A CDA Document Level Template with a ClinicalDocument element as root SHALL have a context, e.g. &lt;context path='/'/&gt;.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="allElementIds" select=".//element/@id | .//attribute/@id"/>
      <xsl:variable name="duplicateIds"
                    select="for $elementId in $allElementIds return if (count($allElementIds[. = $elementId]) gt 1) then $elementId else ()"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty($duplicateIds)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($duplicateIds)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Template element and attribute ids SHALL be unique with the same template id/version. Found duplicates: '<xsl:text/>
                  <xsl:value-of select="distinct-values($duplicateIds)"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="format" select="(classification/@format, 'hl7v3xml1')[1]"/>
      <xsl:variable name="artdecor" select="'https://assets.art-decor.org/ADAR/rv/'"/>
      <xsl:variable name="datatypeFile"
                    select="if ($format = 'hl7v3xml1') then ('DECOR-supported-datatypes.xml') else concat('DECOR-supported-datatypes-', $format, '.xml')"/>
      <xsl:variable name="supportedDatatypes"
                    select="if (doc-available($datatypeFile)) then doc($datatypeFile) else if (doc-available(concat($artdecor, $datatypeFile))) then doc(concat($artdecor, $datatypeFile)) else ()"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$supportedDatatypes"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="$supportedDatatypes">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Template does not have a supported classification/@format "<xsl:text/>
                  <xsl:value-of select="$format"/>
                  <xsl:text/>" or <xsl:text/>
                  <xsl:value-of select="$datatypeFile"/>
                  <xsl:text/> is missing.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="isBBR" select="ancestor::*/@repository = 'true'"/>
      <xsl:variable name="isfromBBR" select="@url and @ident"/>
      <!--REPORT error-->
      <xsl:if test="$isBBR and not($isfromBBR) and (.//element[not(@id)] | .//attribute[not(@id)])">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$isBBR and not($isfromBBR) and (.//element[not(@id)] | .//attribute[not(@id)])">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: Template is part of a building block repository and is missing one or more @id attributes on &lt;element/&gt; and/or &lt;attribute/&gt;. This may lead to problems on templates that use this template as prototype.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT warning-->
      <xsl:if test="$isfromBBR and (.//element[not(@id)] | .//attribute[not(@id)])">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$isfromBBR and (.//element[not(@id)] | .//attribute[not(@id)])">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: Template is part of a foreign building block repository and is missing one or more @id attributes on &lt;element/&gt; and/or &lt;attribute/&gt;. This may lead to problems on templates that use this template as prototype. Please request the BBR maintaining parties to update their templates (@url="<xsl:text/>
               <xsl:value-of select="@url"/>
               <xsl:text/>" and @prefix="<xsl:text/>
               <xsl:value-of select="@ident"/>
               <xsl:text/>").<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template example</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/template[not(@statusCode = $statusCodesInactive)]/example[not(@type = 'error')]"
                 priority="1050"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/template[not(@statusCode = $statusCodesInactive)]/example[not(@type = 'error')]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;template ', string-join(for $att in ancestor-or-self::template[1]/(@id, @ref, @name, @displayName, @effectiveDate, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="tmid" select="../@id"/>
      <xsl:variable name="attributesTop"
                    select="../attribute[@name][not(@prohibited = 'true')][@value | vocabulary/@code]"/>
      <xsl:variable name="valueSetsTop"
                    select="                 for $vs in $allValueSets                 return                  if ($attributesTop/vocabulary[@valueSet = $vs/@id][@flexibility = $vs/@effectiveDate]) then $vs else if ($attributesTop/vocabulary[@valueSet = $vs/@id]) then ($allValueSets[@id = $vs/@id][@effectiveDate = max($allValueSets[@id = $vs/@id]/xs:dateTime(@effectiveDate))]) else ()"/>
      <xsl:variable name="attributesSub"
                    select="..[empty(attribute)][count(element) = 1]/element/attribute[@name][not(@prohibited = 'true')][@value | vocabulary/@code][not(vocabulary/@valueSet)]"/>
      <xsl:variable name="valueSetsSub"
                    select="                 for $vs in $allValueSets                 return                  if ($attributesSub/vocabulary[@valueSet = $vs/@id][@flexibility = $vs/@effectiveDate]) then $vs else if ($attributesSub/vocabulary[@valueSet = $vs/@id]) then ($allValueSets[@id = $vs/@id][@effectiveDate = max($allValueSets[@id = $vs/@id]/xs:dateTime(@effectiveDate))]) else ()"/>
      <xsl:variable name="contextElementTop"
                    select="(..[attribute], ..[empty(attribute)][count(element) = 1])[1]/element[matches(@name, '^([^:]+:)?templateId(\[.*)?$')]/attribute[not(@isOptional = 'true')][not(@prohibited = 'true')]/(@root | @value)"/>
      <xsl:variable name="contextElementSub"
                    select="..[count(element) = 1]/element/element[matches(@name, '^([^:]+:)?templateId(\[.*)?$')]/attribute[not(@isOptional = 'true')][not(@prohibited = 'true')]/(@root | @value)"/>
      <xsl:variable name="codeElementTop"
                    select="(..[attribute], ..[empty(attribute)][count(element) = 1])[1]/element[matches(@name, '^([^:]+:)?code(\[.*)?$')]/vocabulary[@code | @codeSystem]"/>
      <xsl:variable name="codeElementSub"
                    select="..[count(element) = 1]/element/element[matches(@name, '^([^:]+:)?code(\[.*)?$')]/vocabulary[@code | @codeSystem]"/>
      <xsl:variable name="topLevelAttribute" select="exists($attributesTop)"/>
      <xsl:variable name="exampleAttributes"
                    select="if ($attributesTop | $attributesSub) then */@* else ()"/>
      <xsl:variable name="misMatchingAttributesTop"
                    select="if (count(*) = 1 and empty($valueSetsTop[.//completeCodeSystem | .//include | .//exclude])) then for $attr in $attributesTop return $exampleAttributes[name() = $attr/@name][not(. = ($attr/@value | $attr/vocabulary/@code | $valueSetsTop//@code))] else ()"/>
      <xsl:variable name="misMatchingAttributesSub"
                    select="if ($topLevelAttribute or empty($valueSetsSub[.//completeCodeSystem | .//include | .//exclude])) then () else (for $attr in $attributesSub return $exampleAttributes[name() = $attr/@name][not(. = ($attr/@value | $attr/vocabulary/@code | $valueSetsSub//@code))])"/>
      <xsl:variable name="exampleTemplateId"
                    select="                 if ($topLevelAttribute and count(*) = 1) then (                     if ($contextElementTop) then */*:templateId else if ($contextElementSub) then */*/*:templateId else ()                 ) else                 if ($topLevelAttribute) then (                     if ($contextElementTop) then *:templateId else if ($contextElementSub) then */*:templateId else ()                 ) else                 if ($contextElementTop) then *:templateId else                  if ($contextElementSub) then */*:templateId else ()             "/>
      <xsl:variable name="exampleCode"
                    select="                 if ($topLevelAttribute and count(*) = 1) then (                     if ($codeElementTop) then */*:code else if ($codeElementSub) then */*/*:code else ()                 ) else                  if ($topLevelAttribute) then (                     if ($codeElementTop) then *:code else if ($codeElementSub) then */*:code else ()                 ) else                 if ($codeElementTop) then *:code else if ($codeElementSub) then */*:code else ()"/>
      <!--REPORT error-->
      <xsl:if test="count($misMatchingAttributesTop | $misMatchingAttributesSub) = 1">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="count($misMatchingAttributesTop | $misMatchingAttributesSub) = 1">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: Example <xsl:text/>
               <xsl:value-of select="count(preceding-sibling::example) + 1"/>
               <xsl:text/> attribute <xsl:text/>
               <xsl:value-of select="($misMatchingAttributesTop | $misMatchingAttributesSub)/string-join(concat(name(), '=''', ., ''''), ' ')"/>
               <xsl:text/> does not match specified attribute value(s): <xsl:text/>
               <xsl:value-of select="($attributesTop | $attributesSub)[@name = ($misMatchingAttributesTop | $misMatchingAttributesSub)/name()]/string-join(concat(@name, '=''', string-join((@value, vocabulary/@code), ' or '), ''''), ' ')"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="count($misMatchingAttributesTop | $misMatchingAttributesSub) gt 1">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="count($misMatchingAttributesTop | $misMatchingAttributesSub) gt 1">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: Example <xsl:text/>
               <xsl:value-of select="count(preceding-sibling::example) + 1"/>
               <xsl:text/> attribute <xsl:text/>
               <xsl:value-of select="($misMatchingAttributesTop | $misMatchingAttributesSub)/string-join(concat(name(), '=''', ., ''''), ' ')"/>
               <xsl:text/> do not match specified attribute values: <xsl:text/>
               <xsl:value-of select="($attributesTop | $attributesSub)[@name = ($misMatchingAttributesTop | $misMatchingAttributesSub)/name()]/string-join(concat(@name, '=''', string-join((@value, vocabulary/@code), ' or '), ''''), ' ')"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$contextElementTop and $exampleTemplateId/@root[not(. = $contextElementTop)]                 ">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$contextElementTop and $exampleTemplateId/@root[not(. = $contextElementTop)]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: Example <xsl:text/>
               <xsl:value-of select="count(preceding-sibling::example) + 1"/>
               <xsl:text/> templateId/@root=<xsl:text/>
               <xsl:value-of select="string-join(for $v in $exampleTemplateId/@root[not(. = $contextElementTop)] return concat('''', $v, ''''), ' or ')"/>
               <xsl:text/> does not match specified templateId/@root=<xsl:text/>
               <xsl:value-of select="string-join(for $v in $contextElementTop return concat('''', $v, ''''), ' or ')"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$contextElementSub and $exampleTemplateId/@root[not(. = $contextElementSub)]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$contextElementSub and $exampleTemplateId/@root[not(. = $contextElementSub)]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: Example <xsl:text/>
               <xsl:value-of select="count(preceding-sibling::example) + 1"/>
               <xsl:text/> templateId/@root=<xsl:text/>
               <xsl:value-of select="string-join(for $v in $exampleTemplateId/@root[not(. = $contextElementSub)] return concat('''', $v, ''''), ' or ')"/>
               <xsl:text/> does not match specified templateId/@root=<xsl:text/>
               <xsl:value-of select="string-join(for $v in $contextElementSub return concat('''', $v, ''''), ' or ')"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$codeElementTop[@code][@codeSystem] and not($codeElementTop/string-join((@code, @codeSystem), '') = $exampleCode/string-join((@code, @codeSystem), ''))">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$codeElementTop[@code][@codeSystem] and not($codeElementTop/string-join((@code, @codeSystem), '') = $exampleCode/string-join((@code, @codeSystem), ''))">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: Example <xsl:text/>
               <xsl:value-of select="count(preceding-sibling::example) + 1"/>
               <xsl:text/> code/@code='<xsl:text/>
               <xsl:value-of select="$exampleCode/@code"/>
               <xsl:text/>' @codeSystem='<xsl:text/>
               <xsl:value-of select="$exampleCode/@codeSystem"/>
               <xsl:text/>' does not match specified <xsl:text/>
               <xsl:value-of select="for $v in $codeElementTop return concat('@code=''', $v/@code, ''' @codeSystem=''', $v/@codeSystem, '''')"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$codeElementSub[@code][@codeSystem] and not($codeElementSub/string-join((@code, @codeSystem), '') = $exampleCode/string-join((@code, @codeSystem), ''))">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$codeElementSub[@code][@codeSystem] and not($codeElementSub/string-join((@code, @codeSystem), '') = $exampleCode/string-join((@code, @codeSystem), ''))">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: Example <xsl:text/>
               <xsl:value-of select="count(preceding-sibling::example) + 1"/>
               <xsl:text/> code/@code='<xsl:text/>
               <xsl:value-of select="$exampleCode/@code"/>
               <xsl:text/>' @codeSystem='<xsl:text/>
               <xsl:value-of select="$exampleCode/@codeSystem"/>
               <xsl:text/>' does not match specified <xsl:text/>
               <xsl:value-of select="for $v in $codeElementSub return concat('@code=''', $v/@code, ''' @codeSystem=''', $v/@codeSystem, '''')"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$codeElementTop[@codeSystem][empty(@code)] and not($codeElementTop/@codeSystem = $exampleCode/@codeSystem)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$codeElementTop[@codeSystem][empty(@code)] and not($codeElementTop/@codeSystem = $exampleCode/@codeSystem)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: Example <xsl:text/>
               <xsl:value-of select="count(preceding-sibling::example) + 1"/>
               <xsl:text/> code/@codeSystem='<xsl:text/>
               <xsl:value-of select="$exampleCode/@codeSystem"/>
               <xsl:text/>' does not match specified <xsl:text/>
               <xsl:value-of select="for $v in $codeElementTop return concat('@codeSystem=''', $v/@codeSystem, '''')"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$codeElementSub[@codeSystem][empty(@code)] and not($codeElementSub/@codeSystem = $exampleCode/@codeSystem)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$codeElementSub[@codeSystem][empty(@code)] and not($codeElementSub/@codeSystem = $exampleCode/@codeSystem)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: Example <xsl:text/>
               <xsl:value-of select="count(preceding-sibling::example) + 1"/>
               <xsl:text/> code/@codeSystem='<xsl:text/>
               <xsl:value-of select="$exampleCode/@codeSystem"/>
               <xsl:text/>' does not match specified <xsl:text/>
               <xsl:value-of select="for $v in $codeElementSub return concat('@codeSystem=''', $v/@codeSystem, '''')"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$codeElementTop[@code][empty(@codeSystem)] and not($codeElementTop/@code = $exampleCode/@code)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$codeElementTop[@code][empty(@codeSystem)] and not($codeElementTop/@code = $exampleCode/@code)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: Example <xsl:text/>
               <xsl:value-of select="count(preceding-sibling::example) + 1"/>
               <xsl:text/> code/@code='<xsl:text/>
               <xsl:value-of select="$exampleCode/@code"/>
               <xsl:text/>' does not match specified <xsl:text/>
               <xsl:value-of select="for $v in $codeElementTop return concat('@codeSystem=''', $v/@code, '''')"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$codeElementSub[@code][empty(@codeSystem)] and not($codeElementSub/@code = $exampleCode/@code)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$codeElementSub[@code][empty(@codeSystem)] and not($codeElementSub/@code = $exampleCode/@code)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: Example <xsl:text/>
               <xsl:value-of select="count(preceding-sibling::example) + 1"/>
               <xsl:text/> code/@code='<xsl:text/>
               <xsl:value-of select="$exampleCode/@code"/>
               <xsl:text/>' does not match specified <xsl:text/>
               <xsl:value-of select="for $v in $codeElementSub return concat('@codeSystem=''', $v/@code, '''')"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template context</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/template[not(@statusCode = $statusCodesInactive)]/context"
                 priority="1048"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/template[not(@statusCode = $statusCodesInactive)]/context"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;template ', string-join(for $att in ancestor-or-self::template[1]/(@id, @ref, @name, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @path)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@id and @path)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template context SHALL have @id or @path, not both.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id) or @id = ('*', '**')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id) or @id = ('*', '**')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template context/@id SHALL be '*' or '**'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@path = '')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@path = '')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template context/@path SHALL NOT be empty.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template Relationship</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/template[not(@statusCode = $statusCodesInactive)]/relationship"
                 priority="1046"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/template[not(@statusCode = $statusCodesInactive)]/relationship"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;template ', string-join(for $att in ancestor-or-self::template[1]/(@id, @ref, @name, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@template or @model) and not(@template and @model)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@template or @model) and not(@template and @model)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template relationship SHALL have either <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@template or <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@model, and not both.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@model) or @type = 'DRIV'"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@model) or @type = 'DRIV'">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template relationship to a model SHALL be 'DRIV' (derived).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@template) or matches(@template, '^[0-9\.]+$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@template) or matches(@template, '^[0-9\.]+$')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template relationship/@template='<xsl:text/>
                  <xsl:value-of select="@template"/>
                  <xsl:text/>' references SHALL be based on template/@id. References by @name quickly become ambiguous.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template Element</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/template[not(@statusCode = $statusCodesInactive)]//element"
                 priority="1044"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/template[not(@statusCode = $statusCodesInactive)]//element"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;template ', string-join(for $att in ancestor-or-self::template[1]/(@id, @ref, @name, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@maximumMultiplicity = ('*', '?') or not(@minimumMultiplicity castable as xs:integer and @maximumMultiplicity castable as xs:integer) or xs:integer(@minimumMultiplicity) le xs:integer(@maximumMultiplicity)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@maximumMultiplicity = ('*', '?') or not(@minimumMultiplicity castable as xs:integer and @maximumMultiplicity castable as xs:integer) or xs:integer(@minimumMultiplicity) le xs:integer(@maximumMultiplicity)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> minimumMultiplicity='<xsl:text/>
                  <xsl:value-of select="@minimumMultiplicity"/>
                  <xsl:text/>' SHALL be less than or equal to maximumMultiplicity='<xsl:text/>
                  <xsl:value-of select="@maximumMultiplicity"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="refid"
                    select="if (@ref) then concat(' (ref=''', @ref, '''') else ()"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and @conformance = ('C', 'NP', 'O'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and @conformance = ('C', 'NP', 'O'))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and have @conformance = <xsl:text/>
                  <xsl:value-of select="@conformance"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and @minimumMultiplicity = '0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and @minimumMultiplicity = '0')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and have @minimumMultiplicity = 0.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and @maximumMultiplicity = '0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and @maximumMultiplicity = '0')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and have @maximumMultiplicity = 0.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@conformance = 'R' and @maximumMultiplicity = '0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@conformance = 'R' and @maximumMultiplicity = '0')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT have conformance = 'R' and have @maximumMultiplicity = 0.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and (attribute[@nullFlavor or @name = 'nullFlavor'][not(@isOptional = 'true')] | attribute[@name = 'xsi:nil'][@value = 'true'][not(@prohibited = 'true')]))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and (attribute[@nullFlavor or @name = 'nullFlavor'][not(@isOptional = 'true')] | attribute[@name = 'xsi:nil'][@value = 'true'][not(@prohibited = 'true')]))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and require @nullFlavor or @xsi:nil = true.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="@conformance[. = 'NP'] and (@minimumMultiplicity != '0' or @maximumMultiplicity != '0')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="@conformance[. = 'NP'] and (@minimumMultiplicity != '0' or @maximumMultiplicity != '0')">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>
               <xsl:text/>
               <xsl:value-of select="$refid"/>
               <xsl:text/>
               <xsl:text/>
               <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
               <xsl:text/> SHALL NOT have conformance=NP and min or max other than 0.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(self::concept[@conformance = 'C']) or condition or enableWhen"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::concept[@conformance = 'C']) or condition or enableWhen">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Conditional <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL have condition/enableWhen to explain the condition.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(self::element[@conformance = 'C']) or constraint or ../constraint"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::element[@conformance = 'C']) or constraint or ../constraint">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Conditional <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHOULD have (a sibling) constraint to explain the condition.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tmid" select="@contains | @ref"/>
      <xsl:variable name="tmed" select="@flexibility[not(. = 'dynamic')]"/>
      <xsl:variable name="tmbyid" select="$allTemplates[(@id | @name) = $tmid]"/>
      <xsl:variable name="tm"
                    select="if ($tmed) then $tmbyid[@effectiveDate = $tmed] else $tmbyid[@effectiveDate = max($tmbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="tmref" select="$allTemplates[@ref = $tmid]"/>
      <!--REPORT error-->
      <xsl:if test="$tmid and $isDecorCompiled and empty($tm)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$tmid and $isDecorCompiled and empty($tm)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($tmid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$tmid"/>
               <xsl:text/>' SHALL point to a template with flexibility '<xsl:text/>
               <xsl:value-of select="($tmed, 'dynamic')[1]"/>
               <xsl:text/>'. In a compiled project, all references are expected to be resolved.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$tmid and not($isDecorCompiled) and starts-with($tmid, concat($projectId, '.')) and empty($tm | $tmref)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$tmid and not($isDecorCompiled) and starts-with($tmid, concat($projectId, '.')) and empty($tm | $tmref)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($tmid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$tmid"/>
               <xsl:text/>' SHALL point to a template '<xsl:text/>
               <xsl:value-of select="($tmed, 'dynamic')[1]"/>
               <xsl:text/>' or reference.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT info-->
      <xsl:if test="$tmid and not($isDecorCompiled) and not(starts-with($tmid, concat($projectId, '.'))) and empty($tm | $tmref)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$tmid and not($isDecorCompiled) and not(starts-with($tmid, concat($projectId, '.'))) and empty($tm | $tmref)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($tmid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$tmid"/>
               <xsl:text/>' doesn't point to any template '<xsl:text/>
               <xsl:value-of select="($tmed, 'dynamic')[1]"/>
               <xsl:text/>' or reference. This resolves itself in compilation if possible. To add this template to view in ART, consider adding a reference for it.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT info-->
      <xsl:if test="$tmid and $tm[context/@path[not(. = '//')]] and not(parent::choice)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$tmid and $tm[context/@path[not(. = '//')]] and not(parent::choice)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($tmid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$tmid"/>
               <xsl:text/>' flexibility '<xsl:text/>
               <xsl:value-of select="($tmed, 'dynamic')[1]"/>
               <xsl:text/>' points to a template with context/@path='<xsl:text/>
               <xsl:value-of select="$tm/context/@path"/>
               <xsl:text/>'. Best practice is to call this type of template only from a transaction. When called from another template, this context path is overridden by the context of the calling template.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($tmid) or matches($tmid, '^[0-9\.]+$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($tmid) or matches($tmid, '^[0-9\.]+$')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@<xsl:text/>
                  <xsl:value-of select="name($tmid)"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/>' references SHALL be based on template/@id. References by @name quickly become ambiguous.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tcnt" select="count($tm/element | $tm/choice | $tm/include)"/>
      <!--REPORT warning-->
      <xsl:if test="self::include[@minimumMultiplicity | @maximumMultiplicity | @conformance[not(. = 'R')] | @isMandatory] and $tcnt gt 1">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="self::include[@minimumMultiplicity | @maximumMultiplicity | @conformance[not(. = 'R')] | @isMandatory] and $tcnt gt 1">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: template include references a template with multiple elements. If you specify multiplicity, conformance or isMandatory it applies to all of them.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(self::include) or not($tm/attribute) or parent::template or (parent::element and not(preceding-sibling::element | preceding-sibling::choice))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::include) or not($tm/attribute) or parent::template or (parent::element and not(preceding-sibling::element | preceding-sibling::choice))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@<xsl:text/>
                  <xsl:value-of select="name($tmid)"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/>' points to a template with top level attributes, but your context is not an element.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="count(parent::element/choice | parent::element/include | parent::element/element) != 1 or not(@ref and $tm[context/@id])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(parent::element/choice | parent::element/include | parent::element/element) != 1 or not(@ref and $tm[context/@id])">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: template <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@<xsl:text/>
                  <xsl:value-of select="name($tmid)"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/>' points to a template with context/@id. Best practice when this include is the only content is to use element/@contains instead of include.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(@ref and $tm[context/@path[not(. = '//')]])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@ref and $tm[context/@path[not(. = '//')]])">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: template <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@<xsl:text/>
                  <xsl:value-of select="name($tmid)"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/>' points to a template with context/@path='<xsl:text/>
                  <xsl:value-of select="$tm/context/@path"/>
                  <xsl:text/>'. Best practice is to call this type of template only from a transaction. When called from another template, this context path is overridden by the context of the calling template.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="choicemin"
                    select="(self::choice[1]/@minimumMultiplicity[. castable as xs:integer], parent::choice[1]/@minimumMultiplicity[. castable as xs:integer], 0)[1]"/>
      <xsl:variable name="choicemax"
                    select="(self::choice[1]/@maximumMultiplicity[. castable as xs:integer], parent::choice[1]/@maximumMultiplicity[. castable as xs:integer], '*')[1]"/>
      <xsl:variable name="childmin" select="@minimumMultiplicity"/>
      <xsl:variable name="childmax" select="@maximumMultiplicity"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($childmin and parent::choice) or not($choicemin castable as xs:integer and $childmin castable as xs:integer) or xs:integer($childmin) le xs:integer($choicemin)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($childmin and parent::choice) or not($choicemin castable as xs:integer and $childmin castable as xs:integer) or xs:integer($childmin) le xs:integer($choicemin)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@minimumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$childmin"/>
                  <xsl:text/>' SHALL be less than or equal to the parent choice/@minimumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$choicemin"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($childmax and parent::choice) or ($childmax = '*' and $choicemax = '*') or not($choicemax castable as xs:integer and $childmax castable as xs:integer) or xs:integer($childmax) le xs:integer($choicemax)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($childmax and parent::choice) or ($childmax = '*' and $choicemax = '*') or not($choicemax castable as xs:integer and $childmax castable as xs:integer) or xs:integer($childmax) le xs:integer($choicemax)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@maximumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$childmax"/>
                  <xsl:text/>' SHALL be less than or equal to the parent choice/@maximumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$choicemax"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="childrenmin"
                    select="sum(*/xs:integer(@minimumMultiplicity[. castable as xs:integer]))"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(self::choice) or empty($childrenmin) or not($choicemin castable as xs:integer) or xs:integer($choicemin) ge $childrenmin"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::choice) or empty($childrenmin) or not($choicemin castable as xs:integer) or xs:integer($choicemin) ge $childrenmin">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@minimumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$choicemin"/>
                  <xsl:text/>' SHALL be greater or equal than the sum of the minimumMultiplicities of its constituents '<xsl:text/>
                  <xsl:value-of select="$childmin"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="name()"/>
      <xsl:variable name="nodeIdentity"
                    select="string-join(for $att in (@id, @ref, @contains, @name, @test, @language, @key) return $att, '')"/>
      <xsl:variable name="duplicates"
                    select="following-sibling::*[name() = $name][string-join(for $att in (@id, @ref, @contains, @name, @test, @language, @key) return $att, '') = $nodeIdentity]"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="empty($duplicates)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($duplicates)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> has sibling <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> particle(s) that carry the same values for the attributes @id, @ref, @contains, @name, @test, @language, @key.<xsl:text/>
                  <xsl:value-of select="if (self::let) then 'This is not allowed as per the ISO Schematron standard and will lead to issues with frameworks like SchXslt. ' else ()"/>
                  <xsl:text/> This could lead to merge problems in editing templates based on this templates. Consider updating to make these particles distinct.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(references)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(references)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template &lt;references/&gt; SHALL NOT be used any more. Use rules/templateAssociation instead.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="format"
                    select="(ancestor::template/classification/@format, 'hl7v3xml1')[1]"/>
      <xsl:variable name="artdecor" select="'https://assets.art-decor.org/ADAR/rv/'"/>
      <xsl:variable name="datatypeFile"
                    select="if ($format = 'hl7v3xml1') then ('DECOR-supported-datatypes.xml') else concat('DECOR-supported-datatypes-', $format, '.xml')"/>
      <xsl:variable name="supportedDatatypes"
                    select="if (doc-available($datatypeFile)) then doc($datatypeFile) else if (doc-available(concat($artdecor, $datatypeFile))) then doc(concat($artdecor, $datatypeFile)) else ()"/>
      <xsl:variable name="dt" select="@datatype"/>
      <xsl:variable name="dtName"
                    select="if (contains($dt, ':')) then substring-after($dt, ':') else ($dt)"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($supportedDatatypes) or not(@datatype) or $supportedDatatypes//(dataType | flavor)[@name = ($dt, $dtName)]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($supportedDatatypes) or not(@datatype) or $supportedDatatypes//(dataType | flavor)[@name = ($dt, $dtName)]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template element/@datatype '<xsl:text/>
                  <xsl:value-of select="@datatype"/>
                  <xsl:text/>' SHALL be a supported datatype (reference file: <xsl:text/>
                  <xsl:value-of select="$datatypeFile"/>
                  <xsl:text/>).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="elmpfx" select="substring-before(@name, ':')"/>
      <xsl:variable name="elmns"
                    select="if ($elmpfx = ('hl7', 'cda')) then ('urn:hl7-org:v3') else if (string-length($elmpfx) gt 0) then (namespace-uri-for-prefix($elmpfx, .)) else ()"/>
      <xsl:variable name="elmname"
                    select="substring-after(if (contains(@name, '[')) then substring-before(@name, '[') else (@name), concat($elmpfx, ':'))"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@name) or matches(@name, '^([^:\s]+:)?[^\d][A-Za-z\d\._-]*')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@name) or matches(@name, '^([^:\s]+:)?[^\d][A-Za-z\d\._-]*')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template element/@name='<xsl:text/>
                  <xsl:value-of select="($elmname, @name)[not(. = '')][1]"/>
                  <xsl:text/>' SHALL be a QName without predicate between brackets.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="oldSchoolAttribute"
                    select="attribute/(@classCode | @contextConductionInd | @contextControlCode | @determinerCode | @extension | @independentInd | @institutionSpecified | @inversionInd | @mediaType | @moodCode | @negationInd | @nullFlavor | @operator | @qualifier | @representation | @root | @typeCode | @unit | @use)"/>
      <xsl:variable name="allDefinedAttributeNames"
                    select="attribute/@*[name() = $oldSchoolAttribute/name()]/name(), attribute/@name"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count($allDefinedAttributeNames) = count(distinct-values($allDefinedAttributeNames))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count($allDefinedAttributeNames) = count(distinct-values($allDefinedAttributeNames))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template<xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@name='<xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>' SHALL NOT define any attribute more than once on the same element.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="empty($oldSchoolAttribute)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($oldSchoolAttribute)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: template <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@name='<xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>' SHOULD NOT use attribute shorthand for HL7 V3 attribute. Use is discouraged, please use @name='..' and optionally @value='..' instead.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="attribute[@id][count(@*[name() = $oldSchoolAttribute/name()]) gt 1]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="attribute[@id][count(@*[name() = $oldSchoolAttribute/name()]) gt 1]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@name='<xsl:text/>
               <xsl:value-of select="@name"/>
               <xsl:text/>' SHALL NOT contain attribute with multiple shorthands and @id as that would be ambiguous.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:variable name="attributeNullFlavor"
                    select="attribute[@nullFlavor][not(@prohibited = 'true')] | attribute[@name = 'nullFlavor'][not(@prohibited = 'true')]"/>
      <xsl:variable name="requiredParticles"
                    select="attribute[not(@isOptional = 'false')][not(@prohibited = 'true')] | element[@minimumMultiplicity != '0'][not(@conformance = 'NP')] | vocabulary[@code] | vocabulary[@codeSystem]"/>
      <xsl:variable name="valueSets"
                    select="                 for $vocabulary in vocabulary[@valueSet]                 return $allValueSets[@id = $vocabulary/@valueSet][@effectiveDate = $vocabulary/@flexibility] | $allValueSets[@id = $vocabulary/@valueSet][@effectiveDate = max($allValueSets[@id = $vocabulary/@valueSet]/xs:dateTime(@effectiveDate))]                 "/>
      <xsl:variable name="vsHasExceptions"
                    select="$valueSets/conceptList/exception | $valueSets/conceptList/include[@exception = 'true']"/>
      <xsl:variable name="templateType"
                    select="(ancestor::template/classification/@format, 'hl7v3xml1')[1]"/>
      <xsl:variable name="elementIsMandatory" select="@isMandatory = 'true'"/>
      <xsl:variable name="elementIsRequired"
                    select="exists(@minimumMultiplicity[not(. = '0')])"/>
      <!--REPORT info-->
      <xsl:if test="not(ancestor::template[@statusCode = $statusCodesInactiveFinal]) and (empty(vocabulary[@valueSet]) or $valueSets[@id]) and $format = 'hl7v3xml1' and $dt and $elementIsRequired and not($elementIsMandatory) and not($attributeNullFlavor | $vsHasExceptions | $requiredParticles)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(ancestor::template[@statusCode = $statusCodesInactiveFinal]) and (empty(vocabulary[@valueSet]) or $valueSets[@id]) and $format = 'hl7v3xml1' and $dt and $elementIsRequired and not($elementIsMandatory) and not($attributeNullFlavor | $vsHasExceptions | $requiredParticles)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@name='<xsl:text/>
               <xsl:value-of select="@name"/>
               <xsl:text/>' has @minimumMultiplicity &gt; 0 and is not mandatory, but does not define any NullFlavor values (directly or through a value set). This effectively places all NullFlavors in scope, making it harder to implement.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template Include</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/template[not(@statusCode = $statusCodesInactive)]//include"
                 priority="1042"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/template[not(@statusCode = $statusCodesInactive)]//include"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;template ', string-join(for $att in ancestor-or-self::template[1]/(@id, @ref, @name, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@maximumMultiplicity = ('*', '?') or not(@minimumMultiplicity castable as xs:integer and @maximumMultiplicity castable as xs:integer) or xs:integer(@minimumMultiplicity) le xs:integer(@maximumMultiplicity)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@maximumMultiplicity = ('*', '?') or not(@minimumMultiplicity castable as xs:integer and @maximumMultiplicity castable as xs:integer) or xs:integer(@minimumMultiplicity) le xs:integer(@maximumMultiplicity)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> minimumMultiplicity='<xsl:text/>
                  <xsl:value-of select="@minimumMultiplicity"/>
                  <xsl:text/>' SHALL be less than or equal to maximumMultiplicity='<xsl:text/>
                  <xsl:value-of select="@maximumMultiplicity"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="refid"
                    select="if (@ref) then concat(' (ref=''', @ref, '''') else ()"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and @conformance = ('C', 'NP', 'O'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and @conformance = ('C', 'NP', 'O'))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and have @conformance = <xsl:text/>
                  <xsl:value-of select="@conformance"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and @minimumMultiplicity = '0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and @minimumMultiplicity = '0')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and have @minimumMultiplicity = 0.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and @maximumMultiplicity = '0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and @maximumMultiplicity = '0')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and have @maximumMultiplicity = 0.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@conformance = 'R' and @maximumMultiplicity = '0')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@conformance = 'R' and @maximumMultiplicity = '0')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT have conformance = 'R' and have @maximumMultiplicity = 0.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@isMandatory = 'true' and (attribute[@nullFlavor or @name = 'nullFlavor'][not(@isOptional = 'true')] | attribute[@name = 'xsi:nil'][@value = 'true'][not(@prohibited = 'true')]))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@isMandatory = 'true' and (attribute[@nullFlavor or @name = 'nullFlavor'][not(@isOptional = 'true')] | attribute[@name = 'xsi:nil'][@value = 'true'][not(@prohibited = 'true')]))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL NOT be mandatory and require @nullFlavor or @xsi:nil = true.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="@conformance[. = 'NP'] and (@minimumMultiplicity != '0' or @maximumMultiplicity != '0')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="@conformance[. = 'NP'] and (@minimumMultiplicity != '0' or @maximumMultiplicity != '0')">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>
               <xsl:text/>
               <xsl:value-of select="$refid"/>
               <xsl:text/>
               <xsl:text/>
               <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
               <xsl:text/> SHALL NOT have conformance=NP and min or max other than 0.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(self::concept[@conformance = 'C']) or condition or enableWhen"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::concept[@conformance = 'C']) or condition or enableWhen">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: Conditional <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHALL have condition/enableWhen to explain the condition.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not(self::element[@conformance = 'C']) or constraint or ../constraint"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::element[@conformance = 'C']) or constraint or ../constraint">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: Conditional <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="self::element/concat(' name=''', @name, '''')"/>
                  <xsl:text/> SHOULD have (a sibling) constraint to explain the condition.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tmid" select="@contains | @ref"/>
      <xsl:variable name="tmed" select="@flexibility[not(. = 'dynamic')]"/>
      <xsl:variable name="tmbyid" select="$allTemplates[(@id | @name) = $tmid]"/>
      <xsl:variable name="tm"
                    select="if ($tmed) then $tmbyid[@effectiveDate = $tmed] else $tmbyid[@effectiveDate = max($tmbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="tmref" select="$allTemplates[@ref = $tmid]"/>
      <!--REPORT error-->
      <xsl:if test="$tmid and $isDecorCompiled and empty($tm)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$tmid and $isDecorCompiled and empty($tm)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($tmid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$tmid"/>
               <xsl:text/>' SHALL point to a template with flexibility '<xsl:text/>
               <xsl:value-of select="($tmed, 'dynamic')[1]"/>
               <xsl:text/>'. In a compiled project, all references are expected to be resolved.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$tmid and not($isDecorCompiled) and starts-with($tmid, concat($projectId, '.')) and empty($tm | $tmref)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$tmid and not($isDecorCompiled) and starts-with($tmid, concat($projectId, '.')) and empty($tm | $tmref)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($tmid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$tmid"/>
               <xsl:text/>' SHALL point to a template '<xsl:text/>
               <xsl:value-of select="($tmed, 'dynamic')[1]"/>
               <xsl:text/>' or reference.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT info-->
      <xsl:if test="$tmid and not($isDecorCompiled) and not(starts-with($tmid, concat($projectId, '.'))) and empty($tm | $tmref)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$tmid and not($isDecorCompiled) and not(starts-with($tmid, concat($projectId, '.'))) and empty($tm | $tmref)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($tmid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$tmid"/>
               <xsl:text/>' doesn't point to any template '<xsl:text/>
               <xsl:value-of select="($tmed, 'dynamic')[1]"/>
               <xsl:text/>' or reference. This resolves itself in compilation if possible. To add this template to view in ART, consider adding a reference for it.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT info-->
      <xsl:if test="$tmid and $tm[context/@path[not(. = '//')]] and not(parent::choice)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$tmid and $tm[context/@path[not(. = '//')]] and not(parent::choice)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($tmid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$tmid"/>
               <xsl:text/>' flexibility '<xsl:text/>
               <xsl:value-of select="($tmed, 'dynamic')[1]"/>
               <xsl:text/>' points to a template with context/@path='<xsl:text/>
               <xsl:value-of select="$tm/context/@path"/>
               <xsl:text/>'. Best practice is to call this type of template only from a transaction. When called from another template, this context path is overridden by the context of the calling template.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($tmid) or matches($tmid, '^[0-9\.]+$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($tmid) or matches($tmid, '^[0-9\.]+$')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@<xsl:text/>
                  <xsl:value-of select="name($tmid)"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/>' references SHALL be based on template/@id. References by @name quickly become ambiguous.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="tcnt" select="count($tm/element | $tm/choice | $tm/include)"/>
      <!--REPORT warning-->
      <xsl:if test="self::include[@minimumMultiplicity | @maximumMultiplicity | @conformance[not(. = 'R')] | @isMandatory] and $tcnt gt 1">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="self::include[@minimumMultiplicity | @maximumMultiplicity | @conformance[not(. = 'R')] | @isMandatory] and $tcnt gt 1">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: template include references a template with multiple elements. If you specify multiplicity, conformance or isMandatory it applies to all of them.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(self::include) or not($tm/attribute) or parent::template or (parent::element and not(preceding-sibling::element | preceding-sibling::choice))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::include) or not($tm/attribute) or parent::template or (parent::element and not(preceding-sibling::element | preceding-sibling::choice))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@<xsl:text/>
                  <xsl:value-of select="name($tmid)"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/>' points to a template with top level attributes, but your context is not an element.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="count(parent::element/choice | parent::element/include | parent::element/element) != 1 or not(@ref and $tm[context/@id])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(parent::element/choice | parent::element/include | parent::element/element) != 1 or not(@ref and $tm[context/@id])">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: template <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@<xsl:text/>
                  <xsl:value-of select="name($tmid)"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/>' points to a template with context/@id. Best practice when this include is the only content is to use element/@contains instead of include.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(@ref and $tm[context/@path[not(. = '//')]])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@ref and $tm[context/@path[not(. = '//')]])">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: template <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@<xsl:text/>
                  <xsl:value-of select="name($tmid)"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$tmid"/>
                  <xsl:text/>' points to a template with context/@path='<xsl:text/>
                  <xsl:value-of select="$tm/context/@path"/>
                  <xsl:text/>'. Best practice is to call this type of template only from a transaction. When called from another template, this context path is overridden by the context of the calling template.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="choicemin"
                    select="(self::choice[1]/@minimumMultiplicity[. castable as xs:integer], parent::choice[1]/@minimumMultiplicity[. castable as xs:integer], 0)[1]"/>
      <xsl:variable name="choicemax"
                    select="(self::choice[1]/@maximumMultiplicity[. castable as xs:integer], parent::choice[1]/@maximumMultiplicity[. castable as xs:integer], '*')[1]"/>
      <xsl:variable name="childmin" select="@minimumMultiplicity"/>
      <xsl:variable name="childmax" select="@maximumMultiplicity"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($childmin and parent::choice) or not($choicemin castable as xs:integer and $childmin castable as xs:integer) or xs:integer($childmin) le xs:integer($choicemin)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($childmin and parent::choice) or not($choicemin castable as xs:integer and $childmin castable as xs:integer) or xs:integer($childmin) le xs:integer($choicemin)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@minimumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$childmin"/>
                  <xsl:text/>' SHALL be less than or equal to the parent choice/@minimumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$choicemin"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($childmax and parent::choice) or ($childmax = '*' and $choicemax = '*') or not($choicemax castable as xs:integer and $childmax castable as xs:integer) or xs:integer($childmax) le xs:integer($choicemax)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($childmax and parent::choice) or ($childmax = '*' and $choicemax = '*') or not($choicemax castable as xs:integer and $childmax castable as xs:integer) or xs:integer($childmax) le xs:integer($choicemax)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@maximumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$childmax"/>
                  <xsl:text/>' SHALL be less than or equal to the parent choice/@maximumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$choicemax"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="childrenmin"
                    select="sum(*/xs:integer(@minimumMultiplicity[. castable as xs:integer]))"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(self::choice) or empty($childrenmin) or not($choicemin castable as xs:integer) or xs:integer($choicemin) ge $childrenmin"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::choice) or empty($childrenmin) or not($choicemin castable as xs:integer) or xs:integer($choicemin) ge $childrenmin">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@minimumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$choicemin"/>
                  <xsl:text/>' SHALL be greater or equal than the sum of the minimumMultiplicities of its constituents '<xsl:text/>
                  <xsl:value-of select="$childmin"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="name()"/>
      <xsl:variable name="nodeIdentity"
                    select="string-join(for $att in (@id, @ref, @contains, @name, @test, @language, @key) return $att, '')"/>
      <xsl:variable name="duplicates"
                    select="following-sibling::*[name() = $name][string-join(for $att in (@id, @ref, @contains, @name, @test, @language, @key) return $att, '') = $nodeIdentity]"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="empty($duplicates)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($duplicates)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> has sibling <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> particle(s) that carry the same values for the attributes @id, @ref, @contains, @name, @test, @language, @key.<xsl:text/>
                  <xsl:value-of select="if (self::let) then 'This is not allowed as per the ISO Schematron standard and will lead to issues with frameworks like SchXslt. ' else ()"/>
                  <xsl:text/> This could lead to merge problems in editing templates based on this templates. Consider updating to make these particles distinct.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template Choice</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/template[not(@statusCode = $statusCodesInactive)]//choice"
                 priority="1040"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/template[not(@statusCode = $statusCodesInactive)]//choice"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;template ', string-join(for $att in ancestor-or-self::template[1]/(@id, @ref, @name, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="@maximumMultiplicity = ('*', '?') or not(@minimumMultiplicity castable as xs:integer and @maximumMultiplicity castable as xs:integer) or xs:integer(@minimumMultiplicity) le xs:integer(@maximumMultiplicity)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@maximumMultiplicity = ('*', '?') or not(@minimumMultiplicity castable as xs:integer and @maximumMultiplicity castable as xs:integer) or xs:integer(@minimumMultiplicity) le xs:integer(@maximumMultiplicity)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> minimumMultiplicity='<xsl:text/>
                  <xsl:value-of select="@minimumMultiplicity"/>
                  <xsl:text/>' SHALL be less than or equal to maximumMultiplicity='<xsl:text/>
                  <xsl:value-of select="@maximumMultiplicity"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="choicemin"
                    select="(self::choice[1]/@minimumMultiplicity[. castable as xs:integer], parent::choice[1]/@minimumMultiplicity[. castable as xs:integer], 0)[1]"/>
      <xsl:variable name="choicemax"
                    select="(self::choice[1]/@maximumMultiplicity[. castable as xs:integer], parent::choice[1]/@maximumMultiplicity[. castable as xs:integer], '*')[1]"/>
      <xsl:variable name="childmin" select="@minimumMultiplicity"/>
      <xsl:variable name="childmax" select="@maximumMultiplicity"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($childmin and parent::choice) or not($choicemin castable as xs:integer and $childmin castable as xs:integer) or xs:integer($childmin) le xs:integer($choicemin)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($childmin and parent::choice) or not($choicemin castable as xs:integer and $childmin castable as xs:integer) or xs:integer($childmin) le xs:integer($choicemin)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@minimumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$childmin"/>
                  <xsl:text/>' SHALL be less than or equal to the parent choice/@minimumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$choicemin"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($childmax and parent::choice) or ($childmax = '*' and $choicemax = '*') or not($choicemax castable as xs:integer and $childmax castable as xs:integer) or xs:integer($childmax) le xs:integer($choicemax)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($childmax and parent::choice) or ($childmax = '*' and $choicemax = '*') or not($choicemax castable as xs:integer and $childmax castable as xs:integer) or xs:integer($childmax) le xs:integer($choicemax)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@maximumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$childmax"/>
                  <xsl:text/>' SHALL be less than or equal to the parent choice/@maximumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$choicemax"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="childrenmin"
                    select="sum(*/xs:integer(@minimumMultiplicity[. castable as xs:integer]))"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(self::choice) or empty($childrenmin) or not($choicemin castable as xs:integer) or xs:integer($choicemin) ge $childrenmin"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(self::choice) or empty($childrenmin) or not($choicemin castable as xs:integer) or xs:integer($choicemin) ge $childrenmin">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@minimumMultiplicity '<xsl:text/>
                  <xsl:value-of select="$choicemin"/>
                  <xsl:text/>' SHALL be greater or equal than the sum of the minimumMultiplicities of its constituents '<xsl:text/>
                  <xsl:value-of select="$childmin"/>
                  <xsl:text/>'.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(element | include) ge 1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(element | include) ge 1">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL have 1 or more element and/or include (containing elements) to choose from.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template Attribute</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/template[not(@statusCode = $statusCodesInactive)]//attribute"
                 priority="1038"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/template[not(@statusCode = $statusCodesInactive)]//attribute"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;template ', string-join(for $att in ancestor-or-self::template[1]/(@id, @ref, @name, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="refid"
                    select="if (@ref) then concat(' (ref=''', @ref, '''') else ()"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@prohibited = 'true') or not(@isOptional = 'true')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@prohibited = 'true') or not(@isOptional = 'true')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$refid"/>
                  <xsl:text/> SHALL NOT be prohibited and "not optional".<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="name" select="name()"/>
      <xsl:variable name="nodeIdentity"
                    select="string-join(for $att in (@id, @ref, @contains, @name, @test, @language, @key) return $att, '')"/>
      <xsl:variable name="duplicates"
                    select="following-sibling::*[name() = $name][string-join(for $att in (@id, @ref, @contains, @name, @test, @language, @key) return $att, '') = $nodeIdentity]"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="empty($duplicates)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($duplicates)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> has sibling <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> particle(s) that carry the same values for the attributes @id, @ref, @contains, @name, @test, @language, @key.<xsl:text/>
                  <xsl:value-of select="if (self::let) then 'This is not allowed as per the ISO Schematron standard and will lead to issues with frameworks like SchXslt. ' else ()"/>
                  <xsl:text/> This could lead to merge problems in editing templates based on this templates. Consider updating to make these particles distinct.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:variable name="format"
                    select="(ancestor::template/classification/@format, 'hl7v3xml1')[1]"/>
      <xsl:variable name="artdecor" select="'https://assets.art-decor.org/ADAR/rv/'"/>
      <xsl:variable name="datatypeFile"
                    select="if ($format = 'hl7v3xml1') then ('DECOR-supported-datatypes.xml') else concat('DECOR-supported-datatypes-', $format, '.xml')"/>
      <xsl:variable name="supportedDatatypes"
                    select="if (doc-available($datatypeFile)) then doc($datatypeFile) else if (doc-available(concat($artdecor, $datatypeFile))) then doc(concat($artdecor, $datatypeFile)) else ()"/>
      <xsl:variable name="dt" select="@datatype"/>
      <xsl:variable name="dtName"
                    select="if (contains($dt, ':')) then substring-after($dt, ':') else ($dt)"/>
      <xsl:variable name="val" select="@value[not(. = '')]"/>
      <xsl:variable name="pdt" select="parent::*/@datatype"/>
      <xsl:variable name="pdtName"
                    select="if (contains($pdt, ':')) then substring-after($pdt, ':') else ($pdt)"/>
      <xsl:variable name="xsiDtName"
                    select="if (contains(.[@name = 'xsi:type']/@value, ':')) then substring-after(.[@name = 'xsi:type']/@value, ':') else (.[@name = 'xsi:type']/@value)"/>
      <xsl:variable name="dtIsFlavorAndXsiIsDatatype"
                    select="if ($supportedDatatypes) then (exists($supportedDatatypes//(dataType | flavor)[@name = $pdtName]/ancestor-or-self::dataType[@name = $xsiDtName])) else (true())"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@name) or matches(@name, '^([^:\s]+:)?[^\d][A-Za-z\d\._-]*$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@name) or matches(@name, '^([^:\s]+:)?[^\d][A-Za-z\d\._-]*$')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute/@name='<xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>' SHALL be a valid QName.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="not($pdtName and $xsiDtName) or $dtIsFlavorAndXsiIsDatatype"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($pdtName and $xsiDtName) or $dtIsFlavorAndXsiIsDatatype">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: template attribute @xsi:type SHOULD NOT specify a value '<xsl:text/>
                  <xsl:value-of select="$xsiDtName"/>
                  <xsl:text/>', or SHOULD specify a value that matches the element definition '<xsl:text/>
                  <xsl:value-of select="$pdtName"/>
                  <xsl:text/>', or SHOULD specify a value that matches the base datatype when the element definition specifies a flavor.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($supportedDatatypes) or not(@datatype) or $supportedDatatypes//(atomicDataType | flavor)[@name = ($dt, $dtName)]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($supportedDatatypes) or not(@datatype) or $supportedDatatypes//(atomicDataType | flavor)[@name = ($dt, $dtName)]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute/@datatype '<xsl:text/>
                  <xsl:value-of select="@datatype"/>
                  <xsl:text/>' SHALL be a supported datatype (reference file: <xsl:text/>
                  <xsl:value-of select="$datatypeFile"/>
                  <xsl:text/>).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(contains(@value, '|'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(contains(@value, '|'))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute/@name='<xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>' SHOULD NOT have a choice as its @value ('<xsl:text/>
                  <xsl:value-of select="@value"/>
                  <xsl:text/>'). The schematron engine will NOT support that and treat it as a literal string.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('bl', 'bn')) or not($val) or $val = ('true', 'false')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('bl', 'bn')) or not($val) or $val = ('true', 'false')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>' (true or false)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('uid')) or not($val) or matches($val, $OIDpattern) or matches($val, $UUIDpattern) or matches($val, $RUIDpattern)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('uid')) or not($val) or matches($val, $OIDpattern) or matches($val, $UUIDpattern) or matches($val, $RUIDpattern)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>' (OID, UUID or RUID)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('oid')) or not($val) or matches($val, $OIDpattern)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('oid')) or not($val) or matches($val, $OIDpattern)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>'</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('uuid')) or not($val) or matches($val, $UUIDpattern)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('uuid')) or not($val) or matches($val, $UUIDpattern)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>'</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('ruid')) or not($val) or matches($val, $RUIDpattern)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('ruid')) or not($val) or matches($val, $RUIDpattern)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>'</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('cs')) or not($val) or not(matches($val, '\s'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('cs')) or not($val) or not(matches($val, '\s'))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>' (no whitespace)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('ts')) or not($val) or matches($val, $TSpattern)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('ts')) or not($val) or matches($val, $TSpattern)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>'</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('int')) or not($val) or matches($val, $INTdigits)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('int')) or not($val) or matches($val, $INTdigits)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>'</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('real')) or not($val) or matches($val, $REALdigits)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('real')) or not($val) or matches($val, $REALdigits)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>'</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('url')) or not($val) or $val castable as xs:anyURI"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('url')) or not($val) or $val castable as xs:anyURI">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>'</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty($dt) or not(@name = 'root') or not($val) or matches($val, $OIDpattern) or matches($val, $UUIDpattern) or matches($val, $RUIDpattern)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($dt) or not(@name = 'root') or not($val) or matches($val, $OIDpattern) or matches($val, $UUIDpattern) or matches($val, $RUIDpattern)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the datatype OID, UUID or RUID</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern) or matches(@root, $RUIDpattern)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@root) or matches(@root, $OIDpattern) or matches(@root, $UUIDpattern) or matches(@root, $RUIDpattern)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute root='<xsl:text/>
                  <xsl:value-of select="@root"/>
                  <xsl:text/>' SHALL match the datatype OID, UUID or RUID</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty($dt) or not(@name = 'codeSystem') or not($val) or matches($val, $OIDpattern) or matches($val, $UUIDpattern) or matches($val, $RUIDpattern)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($dt) or not(@name = 'codeSystem') or not($val) or matches($val, $OIDpattern) or matches($val, $UUIDpattern) or matches($val, $RUIDpattern)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the datatype 'uid' (OID, UUID or RUID)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@codeSystem) or matches(@codeSystem, $OIDpattern) or matches(@codeSystem, $UUIDpattern) or matches(@codeSystem, $RUIDpattern)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@codeSystem) or matches(@codeSystem, $OIDpattern) or matches(@codeSystem, $UUIDpattern) or matches(@codeSystem, $RUIDpattern)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute codeSystem='<xsl:text/>
                  <xsl:value-of select="@codeSystem"/>
                  <xsl:text/>' SHALL match the datatype 'uid' (OID, UUID or RUID)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty($dt) or not(@name = 'code') or not($val) or not(matches($val, '\s'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($dt) or not(@name = 'code') or not($val) or not(matches($val, '\s'))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the datatype 'cs' (no whitespace)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@code) or not(matches(@code, '\s'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@code) or not(matches(@code, '\s'))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute code='<xsl:text/>
                  <xsl:value-of select="@code"/>
                  <xsl:text/>' SHALL match the datatype 'cs' (no whitespace)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty($dt) or not(@name = 'nullFlavor') or not($val) or not(matches($val, '\s'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($dt) or not(@name = 'nullFlavor') or not($val) or not(matches($val, '\s'))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the datatype 'cs' (no whitespace)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@nullFlavor) or not(matches(@nullFlavor, '\s'))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@nullFlavor) or not(matches(@nullFlavor, '\s'))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute nullFlavor='<xsl:text/>
                  <xsl:value-of select="@nullFlavor"/>
                  <xsl:text/>' SHALL match the datatype 'cs' (no whitespace)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty($dt) or not(@name = 'xsi:nil') or not($val) or $val = ('true', 'false')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($dt) or not(@name = 'xsi:nil') or not($val) or $val = ('true', 'false')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the datatype 'bl' (true or false)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty($dt) or not(@name = 'xsi:nil') or not($val) or $val = ('true', 'false')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty($dt) or not(@name = 'xsi:nil') or not($val) or $val = ('true', 'false')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the datatype 'bl' (true or false)</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('xs:ID')) or not($val) or matches($val, '^([\i-[:]][\c-[:]]*)$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('xs:ID')) or not($val) or matches($val, '^([\i-[:]][\c-[:]]*)$')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>'</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('xs:IDREF')) or not($val) or matches($val, '^([\i-[:]][\c-[:]]*)$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('xs:IDREF')) or not($val) or matches($val, '^([\i-[:]][\c-[:]]*)$')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>'</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($dt = ('xs:IDREFS')) or not($val) or matches($val, '^([\i-[:]][\c-[:]]*)+( [\i-[:]][\c-[:]]*)*$')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($dt = ('xs:IDREFS')) or not($val) or matches($val, '^([\i-[:]][\c-[:]]*)+( [\i-[:]][\c-[:]]*)*$')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template attribute <xsl:text/>
                  <xsl:value-of select="@name"/>
                  <xsl:text/>='<xsl:text/>
                  <xsl:value-of select="$val"/>
                  <xsl:text/>' SHALL match the specified datatype '<xsl:text/>
                  <xsl:value-of select="$dt"/>
                  <xsl:text/>'</svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Property</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/template[not(@statusCode = $statusCodesInactive)]//element/property"
                 priority="1036"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/template[not(@statusCode = $statusCodesInactive)]//element/property"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;template ', string-join(for $att in ancestor-or-self::template[1]/(@id, @ref, @name, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@* except (@unit | @minInclude | @maxInclude | @fractionDigits)) or not(@* except (@currency | @minInclude | @maxInclude | @fractionDigits)) or not(@* except (@minLength | @maxLength)) or not(@* except (@value))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@* except (@unit | @minInclude | @maxInclude | @fractionDigits)) or not(@* except (@currency | @minInclude | @maxInclude | @fractionDigits)) or not(@* except (@minLength | @maxLength)) or not(@* except (@value))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template element property SHALL contain any of these combinations of attributes: (@unit @minInclude @maxInclude @fractionDigits) or (@currency @minInclude @maxInclude @fractionDigits) or (@minLength @maxLength) or (@value)<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template Element and Attribute Vocabulary</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/template[not(@statusCode = $statusCodesInactive)]//vocabulary"
                 priority="1034"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/template[not(@statusCode = $statusCodesInactive)]//vocabulary"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;template ', string-join(for $att in ancestor-or-self::template[1]/(@id, @ref, @name, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="vsid" select="@valueSet"/>
      <xsl:variable name="vsed" select="@flexibility[not(. = 'dynamic')]"/>
      <xsl:variable name="vsbyid" select="$allValueSets[@id = $vsid]"/>
      <xsl:variable name="vs"
                    select="if ($vsed) then $vsbyid[@effectiveDate = $vsed] else $vsbyid[@effectiveDate = max($vsbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="vsref" select="$allValueSets[@ref = $vsid]"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@valueSet) or count(@* except (@valueSet | @flexibility)) = 0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@valueSet) or count(@* except (@valueSet | @flexibility)) = 0">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@valueSet SHALL NOT co-occur with any other attribute than @flexibility.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@domain) or count(@* except (@domain)) = 0"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@domain) or count(@* except (@domain)) = 0">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: template <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@domain SHALL NOT co-occur with any other attribute.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="$vsid and $isDecorCompiled and empty($vs)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$vsid and $isDecorCompiled and empty($vs)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($vsid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$vsid"/>
               <xsl:text/>' SHALL point to a valueSet with flexibility '<xsl:text/>
               <xsl:value-of select="($vsed, 'dynamic')[1]"/>
               <xsl:text/>'. In a compiled project, all references are expected to be resolved.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$vsid and not($isDecorCompiled) and starts-with($vsid, concat($projectId, '.')) and empty($vs | $vsref)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$vsid and not($isDecorCompiled) and starts-with($vsid, concat($projectId, '.')) and empty($vs | $vsref)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($vsid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$vsid"/>
               <xsl:text/>' SHALL point to a valueSet '<xsl:text/>
               <xsl:value-of select="($vsed, 'dynamic')[1]"/>
               <xsl:text/>' or reference.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT info-->
      <xsl:if test="$vsid and not($isDecorCompiled) and not(starts-with($vsid, concat($projectId, '.'))) and empty($vs | $vsref)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$vsid and not($isDecorCompiled) and not(starts-with($vsid, concat($projectId, '.'))) and empty($vs | $vsref)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: template <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($vsid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$vsid"/>
               <xsl:text/>' doesn't point to any valueSet '<xsl:text/>
               <xsl:value-of select="($vsed, 'dynamic')[1]"/>
               <xsl:text/>' or reference. This resolves itself in compilation if possible. To add this valueSet to view, consider adding a reference for it.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($vsid) or matches($vsid, '^[0-9\.]+$') or starts-with($vsid, 'http')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($vsid) or matches($vsid, '^[0-9\.]+$') or starts-with($vsid, 'http')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@valueSet='<xsl:text/>
                  <xsl:value-of select="$vsid"/>
                  <xsl:text/>' references SHALL be based on valueSet/@id. References by @name quickly become ambiguous.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template constraint, let, defineVariable, assert, report</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/template[not(@statusCode = $statusCodesInactive)]//constraint |                             rules/template[not(@statusCode = $statusCodesInactive)]//let |                             rules/template[not(@statusCode = $statusCodesInactive)]//defineVariable |                             rules/template[not(@statusCode = $statusCodesInactive)]//assert |                             rules/template[not(@statusCode = $statusCodesInactive)]//report"
                 priority="1032"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/template[not(@statusCode = $statusCodesInactive)]//constraint |                             rules/template[not(@statusCode = $statusCodesInactive)]//let |                             rules/template[not(@statusCode = $statusCodesInactive)]//defineVariable |                             rules/template[not(@statusCode = $statusCodesInactive)]//assert |                             rules/template[not(@statusCode = $statusCodesInactive)]//report"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;template ', string-join(for $att in ancestor-or-self::template[1]/(@id, @ref, @name, @displayName, @effectiveDate, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="name" select="name()"/>
      <xsl:variable name="nodeIdentity"
                    select="string-join(for $att in (@id, @ref, @contains, @name, @test, @language, @key) return $att, '')"/>
      <xsl:variable name="duplicates"
                    select="following-sibling::*[name() = $name][string-join(for $att in (@id, @ref, @contains, @name, @test, @language, @key) return $att, '') = $nodeIdentity]"/>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="empty($duplicates)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="empty($duplicates)">
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> has sibling <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> particle(s) that carry the same values for the attributes @id, @ref, @contains, @name, @test, @language, @key.<xsl:text/>
                  <xsl:value-of select="if (self::let) then 'This is not allowed as per the ISO Schematron standard and will lead to issues with frameworks like SchXslt. ' else ()"/>
                  <xsl:text/> This could lead to merge problems in editing templates based on this templates. Consider updating to make these particles distinct.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Issue Object</svrl:text>
   <!--RULE -->
   <xsl:template match="issue/object" priority="1030" mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl" context="issue/object"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;issue ', string-join(for $att in ancestor::issue[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@id and @type"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="@id and @type">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: issue object SHALL have an id and a @type.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = ('DS', 'DE', 'VS', 'TM', 'SC', 'TR')) or @effectiveDate"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = ('DS', 'DE', 'VS', 'TM', 'SC', 'TR')) or @effectiveDate">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: issue object of type <xsl:text/>
                  <xsl:value-of select="@type"/>
                  <xsl:text/> SHALL have static @flexibility.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="@type = 'CS' and starts-with(@id, ancestor::decor/project/@id) and empty(@effectiveDate)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="@type = 'CS' and starts-with(@id, ancestor::decor/project/@id) and empty(@effectiveDate)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: issue object of type <xsl:text/>
               <xsl:value-of select="@type"/>
               <xsl:text/> SHALL have static @flexibility.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate tracking/assignment labels</svrl:text>
   <!--RULE -->
   <xsl:template match="issues/issue/tracking | issues/issue/assignment"
                 priority="1028"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="issues/issue/tracking | issues/issue/assignment"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;issue ', string-join(for $att in ancestor::issue[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="allLabels" select="ancestor::issues/labels/label/@code"/>
      <xsl:variable name="undefinedLabels"
                    select="@labels/tokenize(., '\s')[not(. = $allLabels)]"/>
      <!--REPORT warning-->
      <xsl:if test="not(empty($undefinedLabels))">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="not(empty($undefinedLabels))">
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: issue <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/> @labels SHOULD reference defined label codes. Found <xsl:text/>
               <xsl:value-of select="$undefinedLabels"/>
               <xsl:text/>.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="xs:dateTime(@effectiveDate) = max((xs:dateTime(@effectiveDate), preceding-sibling::tracking/xs:dateTime(@effectiveDate), preceding-sibling::assignment/xs:dateTime(@effectiveDate)))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="xs:dateTime(@effectiveDate) = max((xs:dateTime(@effectiveDate), preceding-sibling::tracking/xs:dateTime(@effectiveDate), preceding-sibling::assignment/xs:dateTime(@effectiveDate)))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: issue <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL be newer than its preceding events. Issue SHALL occur in descending date order.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test=".[@effectiveDate = (preceding-sibling::tracking/@effectiveDate | preceding-sibling::assignment/@effectiveDate)]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test=".[@effectiveDate = (preceding-sibling::tracking/@effectiveDate | preceding-sibling::assignment/@effectiveDate)]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: issue <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@effectiveDate SHALL NOT be equal to that of any of it's preceding siblings.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate questionnaire</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/questionnaire[not(@statusCode = $statusCodesInactive)]"
                 priority="1026"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/questionnaire[not(@statusCode = $statusCodesInactive)]"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;questionnaire ', string-join(for $att in (@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="(@id and @effectiveDate and @statusCode) or @ref"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="(@id and @effectiveDate and @statusCode) or @ref">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL have an @id and @effectiveDate and @statusCode, or a @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @ref)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="not(@id and @ref)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @ref.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@id and @flexibility)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id and @flexibility)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHALL NOT have both @id and @flexibility.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@ref) or not(@* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')]) | * except comment[parent::concept])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@ref) or not(@* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')]) | * except comment[parent::concept])">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> with a @ref SHALL NOT have other elements<xsl:text/>
                  <xsl:value-of select="if (self::concept) then ' other than comment' else ()"/>
                  <xsl:text/> or attributes than @name or @displayName. Found: <xsl:text/>
                  <xsl:value-of select="                     string-join(                     for $node in @* except (@ref | @name | @displayName | @ident | @url | @isClosed[. = 'false'] | @caseSensitive[. = 'true'] | @*[not(namespace-uri() = '')])                     return concat('@', name($node))                     , ', ')                     "/>
                  <xsl:text/>
                    .<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT info-->
      <xsl:choose>
         <xsl:when test="not(@id) or * except (name | desc)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@id) or * except (name | desc)">
               <xsl:attribute name="role">info</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>INFO: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/> SHOULD have content if it wants to define something.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="rules/questionnaire[not(@statusCode = $statusCodesInactive)]//item"
                 priority="1025"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/questionnaire[not(@statusCode = $statusCodesInactive)]//item"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;questionnaire ', string-join(for $att in ancestor::questionnaire[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type='group' and (@maxLength|@minValue|@maxValue))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type='group' and (@maxLength|@minValue|@maxValue))">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire/item of type 'group' SHALL not have any of these attributes @maxLength|@minValue|@maxValue.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="ancestor::questionnaire/@statusCode = 'final' and @type = 'group' and empty(item)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="ancestor::questionnaire/@statusCode = 'final' and @type = 'group' and empty(item)">
            <xsl:attribute name="id">que-1a</xsl:attribute>
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: questionnaire/item of type <xsl:text/>
               <xsl:value-of select="@type"/>
               <xsl:text/> SHALL have items (FHIR invariant que-1a).<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT warning-->
      <xsl:if test="ancestor::questionnaire/@statusCode = ('new', 'draft') and @type = 'group' and empty(item)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="ancestor::questionnaire/@statusCode = ('new', 'draft') and @type = 'group' and empty(item)">
            <xsl:attribute name="id">que-1b</xsl:attribute>
            <xsl:attribute name="role">warning</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>WARNING: questionnaire/item of type <xsl:text/>
               <xsl:value-of select="@type"/>
               <xsl:text/> SHOULD contain items (FHIR invariant que-1b).<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'display' and code)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'display' and code)">
               <xsl:attribute name="id">que-1c</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire/item of type <xsl:text/>
                  <xsl:value-of select="@type"/>
                  <xsl:text/> SHALL NOT have code (FHIR invariant que-1c).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="empty(answerValueSet) or empty(answerOption)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="empty(answerValueSet) or empty(answerOption)">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire/item SHALL NOT have both answerOption and answerValueSet (FHIR invariant que-4).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = ('group', 'display', 'question') and (answerValueSet | answerOption))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = ('group', 'display', 'question') and (answerValueSet | answerOption))">
               <xsl:attribute name="id">que-4</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire/item of type <xsl:text/>
                  <xsl:value-of select="@type"/>
                  <xsl:text/> SHALL NOT have answerOption and answerValueSet (FHIR invariant que-5).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'display' and (@repeats[. = 'true'] | @required[. = 'true']))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'display' and (@repeats[. = 'true'] | @required[. = 'true']))">
               <xsl:attribute name="id">que-6</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire/item of type <xsl:text/>
                  <xsl:value-of select="@type"/>
                  <xsl:text/> SHALL NOT have @repeats or @required (FHIR invariant que-6).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = ('group', 'display') and initial)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = ('group', 'display') and initial)">
               <xsl:attribute name="id">que-8</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire/item of type <xsl:text/>
                  <xsl:value-of select="@type"/>
                  <xsl:text/> SHALL NOT have initial (FHIR invariant que-8).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = 'display' and @readOnly[. = 'true'])"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = 'display' and @readOnly[. = 'true'])">
               <xsl:attribute name="id">que-9</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire/item of type <xsl:text/>
                  <xsl:value-of select="@type"/>
                  <xsl:text/> SHALL NOT have @readOnly (FHIR invariant que-9).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@type = ('boolean', 'decimal', 'integer', 'string', 'text', 'url') and @maxLength)"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@type = ('boolean', 'decimal', 'integer', 'string', 'text', 'url') and @maxLength)">
               <xsl:attribute name="id">que-10</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire/item of type <xsl:text/>
                  <xsl:value-of select="@type"/>
                  <xsl:text/> SHALL NOT have @maxLength, only simple types can have this (FHIR invariant que-10).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(count(enableWhen) gt 1 and empty(@enableBehavior))"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(count(enableWhen) gt 1 and empty(@enableBehavior))">
               <xsl:attribute name="id">que-12</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire/item SHALL specify @enableBehavior when more than one enableWhen exists (FHIR invariant que-12).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="@repeats = 'true' or count(initial) le 1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="@repeats = 'true' or count(initial) le 1">
               <xsl:attribute name="id">que-13</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire/item SHALL NOT have multiple initial when item does not repeat (FHIR invariant que-13).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT warning-->
      <xsl:choose>
         <xsl:when test="string-length(@linkId) le 255"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="string-length(@linkId) le 255">
               <xsl:attribute name="id">que-15</xsl:attribute>
               <xsl:attribute name="role">warning</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>WARNING: questionnaire/item/@linkId SHALL NOT exceed 255 characters(FHIR invariant que-15).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="count(answerValueSet) le 1"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="count(answerValueSet) le 1">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire/item SHALL NOT more than 1 answerValueSet. To mitigate you could create a singular value set that includes them. Found: <xsl:text/>
                  <xsl:value-of select="count(answerValueSet)"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <!--RULE -->
   <xsl:template match="rules/questionnaire[not(@statusCode = $statusCodesInactive)]//enableWhen"
                 priority="1024"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/questionnaire[not(@statusCode = $statusCodesInactive)]//enableWhen"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;questionnaire ', string-join(for $att in ancestor::questionnaire[1]/(@id, @ref, @name, name[string-length() gt 0][1], @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="questionId" select="@question"/>
      <!--REPORT error-->
      <xsl:if test="ancestor::item[@linkId = $questionId]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="ancestor::item[@linkId = $questionId]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: questionnaire item enableWhen SHALL NOT depend on itself or an ancestor.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="ancestor::questionnaire//item[@linkId = $questionId]"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="ancestor::questionnaire//item[@linkId = $questionId]">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire item enableWhen SHALL depend on an item contained in the same questionnaire. Found: <xsl:text/>
                  <xsl:value-of select="$questionId"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test=".[@operator = ('&lt;', '&lt;=', '&gt;', '&gt;=')][answerBoolean | answerString | answerCoding]">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test=".[@operator = ('&lt;', '&lt;=', '&gt;', '&gt;=')][answerBoolean | answerString | answerCoding]">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: questionnaire item enableWhen SHALL NOT depend on being <xsl:text/>
               <xsl:value-of select="@operator"/>
               <xsl:text/> than a boolean, string or coding value.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not(@operator = 'exists') or answerBoolean"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not(@operator = 'exists') or answerBoolean">
               <xsl:attribute name="id">que-7</xsl:attribute>
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire item enableWhen/@operator='<xsl:text/>
                  <xsl:value-of select="@operator"/>
                  <xsl:text/>' SHALL have answerBoolean (FHIR invariant que-7).<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Questionnaire Item AnswerValueSet</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/questionnaire[not(@statusCode = $statusCodesInactive)]//answerValueSet"
                 priority="1022"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/questionnaire[not(@statusCode = $statusCodesInactive)]//answerValueSet"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;questionnaire ', string-join(for $att in ancestor-or-self::questionnaire[1]/(@id, @ref, @name, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="vsid" select="@ref"/>
      <xsl:variable name="vsed" select="@flexibility[not(. = 'dynamic')]"/>
      <xsl:variable name="vsbyid" select="$allValueSets[@id = $vsid]"/>
      <xsl:variable name="vs"
                    select="if ($vsed) then $vsbyid[@effectiveDate = $vsed] else $vsbyid[@effectiveDate = max($vsbyid/xs:dateTime(@effectiveDate))]"/>
      <xsl:variable name="vsref" select="$allValueSets[@ref = $vsid]"/>
      <!--REPORT error-->
      <xsl:if test="$vsid and $isDecorCompiled and empty($vs)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$vsid and $isDecorCompiled and empty($vs)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: questionnaire <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($vsid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$vsid"/>
               <xsl:text/>' SHALL point to a valueSet with flexibility '<xsl:text/>
               <xsl:value-of select="($vsed, 'dynamic')[1]"/>
               <xsl:text/>'. In a compiled project, all references are expected to be resolved.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT error-->
      <xsl:if test="$vsid and not($isDecorCompiled) and starts-with($vsid, concat($projectId, '.')) and empty($vs | $vsref)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$vsid and not($isDecorCompiled) and starts-with($vsid, concat($projectId, '.')) and empty($vs | $vsref)">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: questionnaire <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($vsid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$vsid"/>
               <xsl:text/>' SHALL point to a valueSet '<xsl:text/>
               <xsl:value-of select="($vsed, 'dynamic')[1]"/>
               <xsl:text/>' or reference.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--REPORT info-->
      <xsl:if test="$vsid and not($isDecorCompiled) and not(starts-with($vsid, concat($projectId, '.'))) and empty($vs | $vsref)">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="$vsid and not($isDecorCompiled) and not(starts-with($vsid, concat($projectId, '.'))) and empty($vs | $vsref)">
            <xsl:attribute name="role">info</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>INFO: questionnaire <xsl:text/>
               <xsl:value-of select="name(.)"/>
               <xsl:text/>/@<xsl:text/>
               <xsl:value-of select="name($vsid)"/>
               <xsl:text/>='<xsl:text/>
               <xsl:value-of select="$vsid"/>
               <xsl:text/>' doesn't point to any valueSet '<xsl:text/>
               <xsl:value-of select="($vsed, 'dynamic')[1]"/>
               <xsl:text/>' or reference. This resolves itself in compilation if possible. To add this valueSet to view, consider adding a reference for it.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="not($vsid) or matches($vsid, '^[0-9\.]+$') or starts-with($vsid, 'http')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="not($vsid) or matches($vsid, '^[0-9\.]+$') or starts-with($vsid, 'http')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: <xsl:text/>
                  <xsl:value-of select="name(.)"/>
                  <xsl:text/>/@valueSet='<xsl:text/>
                  <xsl:value-of select="$vsid"/>
                  <xsl:text/>' references SHALL be based on valueSet/@id. References by @name quickly become ambiguous.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate unitOption against item type</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/questionnaire[not(@statusCode = $statusCodesInactive)]//unitOption"
                 priority="1020"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/questionnaire[not(@statusCode = $statusCodesInactive)]//unitOption"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;questionnaire ', string-join(for $att in ancestor-or-self::questionnaire[1]/(@id, @ref, @name, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <xsl:variable name="itemType" select="parent::item/@type"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="$itemType = ('integer', 'decimal', 'quantity')"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                test="$itemType = ('integer', 'decimal', 'quantity')">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR: questionnaire item SHALL NOT specify unitOption, unless item type is integer, decimal or quantity. Found <xsl:text/>
                  <xsl:value-of select="$itemType"/>
                  <xsl:text/>.<xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <!--REPORT error-->
      <xsl:if test="following-sibling::unitOption and $itemType = ('integer', 'decimal')">
         <svrl:successful-report xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                                 test="following-sibling::unitOption and $itemType = ('integer', 'decimal')">
            <xsl:attribute name="role">error</xsl:attribute>
            <xsl:attribute name="location">
               <xsl:apply-templates select="." mode="schematron-select-full-path"/>
            </xsl:attribute>
            <svrl:text>ERROR: questionnaire item SHALL NOT specify multiple unitOptions for item type <xsl:text/>
               <xsl:value-of select="$itemType"/>
               <xsl:text/>. Only type quantity supports this.<xsl:text/>
               <xsl:value-of select="$locationContext"/>
               <xsl:text/>
            </svrl:text>
         </svrl:successful-report>
      </xsl:if>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Do not use unit</svrl:text>
   <!--RULE -->
   <xsl:template match="rules/questionnaire[not(@statusCode = $statusCodesInactive)]//item/unit"
                 priority="1018"
                 mode="M37">
      <svrl:fired-rule xmlns:svrl="http://purl.oclc.org/dsdl/svrl"
                       context="rules/questionnaire[not(@statusCode = $statusCodesInactive)]//item/unit"/>
      <xsl:variable name="locationContext"
                    select="                 concat(' | Location &lt;questionnaire ', string-join(for $att in ancestor-or-self::questionnaire[1]/(@id, @ref, @name, @displayName, @effectiveDate, @flexibility, @statusCode, @versionLabel, @url[not(. = $deeplinkprefixservices)], @ident)                 return                 concat(name($att), '=&#34;', $att, '&#34;'), ' '), '/&gt;')"/>
      <!--ASSERT error-->
      <xsl:choose>
         <xsl:when test="false()"/>
         <xsl:otherwise>
            <svrl:failed-assert xmlns:svrl="http://purl.oclc.org/dsdl/svrl" test="false()">
               <xsl:attribute name="role">error</xsl:attribute>
               <xsl:attribute name="location">
                  <xsl:apply-templates select="." mode="schematron-select-full-path"/>
               </xsl:attribute>
               <svrl:text>ERROR questionnaire item SHALL NOT specify unit: use unitOption. <xsl:text/>
                  <xsl:value-of select="if (ancestor::questionnaire/@statusCode = 'draft') then 'Edit/save will do this conversion.' else 'Please convert to unitOption.'"/>
                  <xsl:text/>
                  <xsl:text/>
                  <xsl:value-of select="$locationContext"/>
                  <xsl:text/>
               </svrl:text>
            </svrl:failed-assert>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate VersionAttributeConsistency</svrl:text>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate MultiplicityRangeRequired</svrl:text>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate MultiplicityRange</svrl:text>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Conformance</svrl:text>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Conformance Attribute</svrl:text>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate FreeFormMarkupWithLanguage</svrl:text>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Included or Contained Template</svrl:text>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Choice</svrl:text>
   <svrl:text xmlns:svrl="http://purl.oclc.org/dsdl/svrl">Validate Template Particle Identity</svrl:text>
   <xsl:template match="text()" priority="-1" mode="M37"/>
   <xsl:template match="@*|node()" priority="-2" mode="M37">
      <xsl:apply-templates select="*" mode="M37"/>
   </xsl:template>
</xsl:stylesheet>
