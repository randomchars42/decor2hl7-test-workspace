<!-- 
    ART-DECOR® STANDARD COPYRIGHT AND LICENSE NOTE
    Copyright © ART-DECOR Expert Group and ART-DECOR Open Tools GmbH
    see https://docs.art-decor.org/copyright and https://docs.art-decor.org/licenses

    This file is part of the ART-DECOR® tools suite.    
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:local="http://art-decor.org/functions" xmlns:xhtml="http://www.w3.org/1999/xhtml"
    xmlns:ac="http://www.atlassian.com/schema/confluence/4/ac/" xmlns:ri="http://www.atlassian.com/schema/confluence/4/ri/"
    xmlns:svg="http://www.w3.org/2000/svg" xmlns:err="http://www.w3.org/2005/xqt-errors" version="2.0" exclude-result-prefixes="#all">
    
    <!--
        parameters
        ==========
        to this XSLT and all invoked scripts
    -->
    <xsl:param name="language" select="//@LANGUAGE"/>
    <xsl:param name="igsource" select="//@IMPLEMENTATIONGUIDESOURCE"/>
    <xsl:param name="deeplinkprefix3" select="//@deeplinkprefix3"/>
    <xsl:param name="referenceurl" select="//decor/project/reference/@url"/>
    
    <!-- presets -->
    <xsl:param name="tmpdir" select="'tmp'"/>
    
    <xsl:param name="processDatasets" select="'false'"/>
    <xsl:param name="processDatasetsStartheadlevel" select="'1'"/>
    <xsl:param name="processScenarios" select="'false'"/>
    <xsl:param name="processScenariosStartheadlevel" select="'1'"/>
    <xsl:param name="processTerminologyAssociations" select="'false'"/>
    <xsl:param name="processTerminologyAssociationsStartheadlevel" select="'1'"/>
    <xsl:param name="processValueSets" select="'true'"/>
    <xsl:param name="processValueSetsStartheadlevel" select="'1'"/>
    <xsl:param name="processTemplates" select="'true'"/>
    <xsl:param name="processTemplatesStartheadlevel" select="'1'"/>
    <xsl:param name="processProfiles" select="'false'"/>
    <xsl:param name="processProfilesStartheadlevel" select="'1'"/>
    <xsl:param name="processCodeSystems" select="'true'"/>
    <xsl:param name="processCodeSystemsStartheadlevel" select="'1'"/>
    <xsl:param name="processImplementationGuide" select="'true'"/>
    
    
    <!-- not used yet, only by DECORbasics -->
    <xsl:variable name="defaultLanguage" select="(//project/@defaultLanguage)[1]"/>
    <xsl:variable name="projectDefaultLanguage" select="(//project/@defaultLanguage)[1]"/>
    
    
    <!-- fixed parameters  -->
    <!-- base output prefix if any, must end on "/" or empty on "relative" outputs -->
    <xsl:param name="outputBaseUriPrefix"/>
    <!-- base uri to script (xsl) if any, must end on "/" or empty on "automatic" uri to scripts -->
    <xsl:param name="scriptBaseUriPrefix"/>
    <xsl:param name="switchCreateSchematron" select="false()"/>
    <xsl:param name="switchCreateSchematronWithWrapperIncludes" select="false()"/>
    <xsl:param name="switchCreateDocHTML" select="false()"/>
    <xsl:param name="switchCreateDocSVG" select="false()"/>
    <xsl:param name="switchCreateDocDocbook" select="false()"/>
    <xsl:param name="useLocalAssets" select="false()"/>
    <xsl:param name="useLocalLogos" select="true()"/>
    <xsl:param name="inDevelopmentString" select="'false'"/>
    <xsl:param name="inDevelopment" select="true()"/>
    <xsl:param name="switchCreateDatatypeChecks" select="false()"/>
    <xsl:param name="useCustomLogo" select="false()"/>
    <xsl:param name="useCustomLogoSRC" select="false()"/>
    <xsl:param name="useCustomLogoHREF" select="false()"/>
    <xsl:param name="createDefaultInstancesForRepresentingTemplates" select="false()"/>
    <xsl:param name="skipCardinalityChecks" select="false()"/>
    <xsl:param name="skipPredicateCreation" select="false()"/>
    <xsl:param name="useLatestDecorVersionString" as="xs:string" select="'false'"/>
    <xsl:param name="useLatestDecorVersion" select="$useLatestDecorVersionString = 'true'" as="xs:boolean"/>
    <xsl:param name="latestVersion" select="''"/>
    <xsl:param name="bindingBehaviorValueSets" select="'freeze'"/>
    <xsl:param name="bindingBehaviorValueSetsURL"/>
    <xsl:param name="hideColumns" select="false()"/>
    <xsl:param name="logLevel" select="'INFO'"/>
    <xsl:param name="theLogLevel" select="'INFO'"/>
  
    <!-- if this xsl is invoked by ADRAM service the adram variable is set to the version -->
    <xsl:param name="adram" as="xs:string?" select="'confluence'"/>
    <xsl:param name="inputStaticBaseUri" select="static-base-uri()"/>
    <xsl:param name="inputBaseUri" select="base-uri()"/>
    <xsl:param name="theBaseURI2DECOR" select="string-join(tokenize($inputBaseUri, '/')[position() &lt; last()], '/')"/>
    
    <!-- die on circular references or not, values: 'continue' (default), 'die' -->
    <xsl:param name="onCircularReferences" select="'continue'"/>
    
    <xsl:param name="filtersfile" select="concat($theBaseURI2DECOR, '/', 'filters.xml')"/>
    <xsl:param name="filtersfileavailable" select="if (doc-available($filtersfile)) then exists(doc($filtersfile)/*[not(@filter = ('false', 'off'))][@label[not(. = '')]]) else false()" as="xs:boolean"/>
    
    <!-- see this URL in asserts and reports points to 'generated' HTML fiels or to the 'live' environment.
        It also determines context for any other HTML link.
        - 'live' = art-decor/ frontend (Orbeon)
        - 'live-services' = legacy decor/services
        - 'live-vue' = ad/# frontend (Vue)
        - 'live-services-vue' = exist/apps/api/<object>/<id>/<effectiveDate>/$view (API)
    -->
    <xsl:param name="seeThisUrlLocation" select="'generated'"/>
    
    <!-- Do HTML with treetree/treeblank indenting (default. or set to false()) or treetable.js compatible indenting -->
    <!--xsl:param name="switchCreateTreeTableHtml" select="'false'"/-->
    <xsl:param name="switchCreateTreeTableHtml" select="'false'"/>
       
       
    <!-- additional internal switches -->
    <xsl:param name="processHierarchicalGraphs" select="'false'"/>
    
    
    <xsl:include href="DECOR2html.xsl"/>
    <xsl:include href="DECOR-basics.xsl"/>
        
    <xsl:output method="xml" name="xml" indent="yes" version="1.0" encoding="UTF-8" exclude-result-prefixes="#all"/>
    <xsl:output method="text" name="text"/>
    <xsl:output method="html" name="html" indent="no" omit-xml-declaration="yes" version="4.01" encoding="UTF-8"  doctype-system="http://www.w3.org/TR/html4/strict.dtd"/>
    <xsl:output method="xhtml" name="xhtml" indent="no" omit-xml-declaration="yes" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>   

    <!-- store artifatcs of this projects for later reference -->
    <xsl:variable name="allds" select="//dataset"/>
    <xsl:variable name="allsc" select="//scenario"/>
    <xsl:variable name="allvs" select="//valueSet"/>
    <xsl:variable name="alltm" select="//template"/>
    <xsl:variable name="allcs" select="//codeSystem"/>
    <xsl:variable name="allcm" select="//conceptMap"/>
    <xsl:variable name="allqq" select="//questionnaire"/>
    <xsl:variable name="theoneig" as="node()">
        <xsl:choose>
            <xsl:when test="string-length($igsource) > 0">
                <!--<xsl:copy-of select="document(concat($theBaseURI2DECOR, '/ig-20251120213023/aktin-20251120213023-implementationguide.xml'))//implementationGuide[@id]" as="node()"/>-->
                <xsl:copy-of select="document($igsource)//implementationGuide[@id]"/>
            </xsl:when>
            <xsl:otherwise>
                <error>IG source not found</error>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:variable>
    
    <!-- only allow https:// schema for deep link prefix services -->
    <xsl:variable name="tmpservlinkcascade" select="(//decor/@deeplinkprefixservices)[1]"/>
    <xsl:variable name="deeplinkprefixservicescascaded">
        <xsl:choose>
            <xsl:when test="starts-with($tmpservlinkcascade, 'http://')">
                <!-- replace http with https -->
                <xsl:value-of select="concat('https://', substring-after($tmpservlink, 'http://'))"/>
            </xsl:when>
            <xsl:when test="starts-with($tmpservlinkcascade, 'https://')">
                <!-- link ok -->
                <xsl:value-of select="$tmpservlinkcascade"/>
            </xsl:when>
            <xsl:otherwise>
                <!-- otherwise fail -->
                <xsl:value-of select="'DEEP-LINK-PREFIX-FAILURE'"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:if test="not(ends-with($tmpservlinkcascade, '/'))">
            <xsl:value-of select="'/'"/>
        </xsl:if>
    </xsl:variable>
    <!-- ADRAM deeplink prefix for issues etc -->
    <xsl:param name="artdecordeeplinkprefix" select="$deeplinkprefixservicescascaded"/>
    
    <xsl:template match="/">
        
        <!-- register our prefix -->
        <xsl:variable name="projectPrefix" select="//decor/project/@prefix"/>
        
        <xsl:message terminate="no">
            <xsl:text>*** Preprocessing Publication for </xsl:text>
            <xsl:value-of select="$projectPrefix"/>
        </xsl:message>
        <xsl:message terminate="no">
            <xsl:text>    - </xsl:text>
            <xsl:value-of select="count($allds)"/>
            <xsl:text> Datasets</xsl:text>
        </xsl:message>
        <xsl:message terminate="no">
            <xsl:text>    - </xsl:text>
            <xsl:value-of select="count($allsc/transaction/transaction)"/>
            <xsl:text> Scenario-Transactions</xsl:text>
        </xsl:message>
        <xsl:message terminate="no">
            <xsl:text>    - </xsl:text>
            <xsl:value-of select="count($allvs)"/>
            <xsl:text> Value Sets</xsl:text>
        </xsl:message>
        <xsl:message terminate="no">
            <xsl:text>    - </xsl:text>
            <xsl:value-of select="count($allcs)"/>
            <xsl:text> Code Systems</xsl:text>
        </xsl:message>
        <xsl:message terminate="no">
            <xsl:text>    - </xsl:text>
            <xsl:value-of select="count($alltm)"/>
            <xsl:text> Templates</xsl:text>
        </xsl:message>
        <xsl:message terminate="no">
            <xsl:text>    - Implementation Guide </xsl:text>
            <xsl:value-of select="count($theoneig)"/>
        </xsl:message>
        <xsl:if test="name($theoneig)='error'">
            <xsl:message terminate="no">
                <xsl:text>      ... +++ but cannot retrieve the Implementation Guide: </xsl:text>
                <xsl:value-of select="$igsource"/>
            </xsl:message>
        </xsl:if>
         
        <!-- write params to check file -->
        <xsl:result-document href="{$tmpdir}/params.xml" format="xml" method="xml">
            <parameters>
                <dataset process="{$processDatasets}" hlevel="{$processDatasetsStartheadlevel}"/>
                <sceanrio process="{$processScenarios}" hlevel="{$processScenariosStartheadlevel}"/>
                <terminologyAssociation process="{$processTerminologyAssociations}" hlevel="{$processTerminologyAssociationsStartheadlevel}"/>
                <valueSet process="{$processValueSets}" hlevel="{$processValueSetsStartheadlevel}"/>
                <template process="{$processTemplates}" hlevel="{$processTemplatesStartheadlevel}"/>
                <profile process="{$processProfiles}" hlevel="{$processProfilesStartheadlevel}"/>
            </parameters>
        </xsl:result-document>
        
        <!-- 
            phase PI: project information, processed unconditionally
            =====
        -->        
        <xsl:for-each select="//decor/project">
            <!-- hush through all projects... oops there is only one, anyway, then just this one -->
            
            <xsl:message terminate="no">
                <xsl:text>    * phase PI: project information, processed unconditionally</xsl:text>
            </xsl:message>
            
            <xsl:variable name="tmp1">
                <xsl:call-template name="doProjectInfo"/>
            </xsl:variable>
            
            <!-- trim leading spaces on each line -->
            <xsl:variable name="infop">
                <xsl:apply-templates select="$tmp1" mode="skiptrailingblanks"/>
            </xsl:variable>
            
            <xsl:variable name="fnpimarkdown" select="concat($tmpdir, '/project/index.md')"/>
            
            <!-- output page -->
            <xsl:result-document href="{$fnpimarkdown}" method="xhtml" indent="no" omit-xml-declaration="yes">
                <!-- frontmatter first -->
                <xsl:call-template name="doFrontmatterArtifact">
                    <xsl:with-param name="title" select="'tabProjectInformation'"/>
                    <xsl:with-param name="name">
                        <xsl:call-template name="doName">
                            <xsl:with-param name="ns" select="name"/>
                        </xsl:call-template>
                    </xsl:with-param>
                </xsl:call-template>
                <!-- page content -->
                <xsl:text># Project Information&#10;&#10;</xsl:text>
                <xsl:apply-templates select="$infop" mode="simplify"/>
                <xsl:text>&#10;</xsl:text>
            </xsl:result-document>    
            
        </xsl:for-each>
            
        <xsl:if test="$processTemplates='true'">
            <!-- 
                phase TM: templates static and dynamic
                =====
                Create one summary for all templates
                per template with id and effective date
                  - create one rendering per effective date (version) with that id, e.g. tmp-1.2.276.0.76.3.1.195.5.56-2015-09-18T000000.html
                  - create one dynamic rendering, i.e. tmp-1.2.276.0.76.3.1.195.5.56-DYNAMIC.html
            -->
            <xsl:message terminate="no">
                <xsl:text>    * phase TM: templates static and dynamic</xsl:text>
            </xsl:message>
            
            <!-- start with the later index.md for all artifacts of this type -->
            <xsl:result-document href="{$tmpdir}/templates/index.md" method="xhtml" indent="no" omit-xml-declaration="yes">
                <!-- frontmatter first -->
                <xsl:call-template name="doFrontmatterArtifact">
                    <xsl:with-param name="title" select="'tabRules'"/>
                    <xsl:with-param name="name">
                        <xsl:call-template name="getMessage">
                            <xsl:with-param name="key" select="'Overview'"/>
                        </xsl:call-template>
                    </xsl:with-param>
                </xsl:call-template>
                <!-- page content -->
                <xsl:text>&#10;</xsl:text>
                <xsl:text># </xsl:text>
                <xsl:call-template name="getMessage">
                    <xsl:with-param name="key" select="'templates'"/>
                </xsl:call-template>
                <xsl:text>&#10;</xsl:text>
                <xsl:text>| Status | Name | ID | Version |&#10;</xsl:text>
                <xsl:text>| :----: | ---- | -- | ------- |&#10;</xsl:text>
                
                <!-- now hush through all artifacts and write output file, finally add the entry to the open artifacts index file -->
                <!-- speciality templates: an extra loop around classification types (template types) -->
                <xsl:for-each-group select="//template" group-by="local:tmptypeorder(classification/@type)"> 
                    
                    <xsl:sort select="local:tmptypeorder(classification/@type)"/>
                    
                    <xsl:text>| </xsl:text>
                    <adimg template="true"/>
                    <xsl:text> | **</xsl:text>
                    <xsl:value-of select="local:tmptypename(classification/@type)"/>
                    <xsl:text>** |&#10;</xsl:text>
                    
                    <!-- now hush through all artifacts of this classification type (template type) -->
                    <xsl:for-each-group select="current-group()" group-by="concat(@id | @ref,@effectiveDate)"> 
                        
                        <xsl:sort select="concat(@displayName,@name)"/>
                        
                        <!-- some inits -->
                        <xsl:variable name="tid" select="@id"/>
                        <xsl:variable name="statusCode" select="@statusCode"/>
                        <xsl:variable name="templatename">
                            <xsl:choose>
                                <xsl:when test="string-length(@displayName)>0">
                                    <xsl:value-of select="@displayName"/>
                                </xsl:when>
                                <xsl:when test="string-length(@name)>0">
                                    <xsl:value-of select="@name"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:call-template name="getMessage">
                                        <xsl:with-param name="key" select="'rulesNoNameOrDisplaynameDefinedYet'"/>
                                    </xsl:call-template>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <!-- create a time stamp based on effectiveDate as YYYY-MM-DDThhmmss (without the :) and an alternative shortcut timepstamp YYYY-MM-DD if time is T00:00:00 -->
                        <xsl:variable name="edbusiness" select="replace(@effectiveDate,':','')"/>
                        <xsl:variable name="xeffshort">
                            <xsl:choose>
                                <xsl:when test="string-length(substring-before(@effectiveDate, 'T00:00:00'))>0">
                                    <xsl:value-of select="substring-before(@effectiveDate, 'T00:00:00')"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="replace(@effectiveDate, 'T', ' ')"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        
                        <!-- render it -->
                        <xsl:variable name="tmrendition">
                            <xsl:apply-templates select=".">
                                <xsl:with-param name="templatename" select="$templatename"/>
                            </xsl:apply-templates>
                        </xsl:variable>                        
                        
                        <!-- 
                            EXPOSITION PHASES
                            
                            I: create the html file content for this STATIC YYYY-MM-DD artifact (goes into the "includes" dir),
                            also change all occurrences of <a href="voc-..." into <a href="/pages/valuesets/vs-"

                        -->
                        <xsl:variable name="fctmhtml">
                            <xsl:apply-templates select="$tmrendition" mode="simplify"/>
                            <xsl:text>&#10;</xsl:text>
                        </xsl:variable>
                        <!-- 
                            II: create the html file content of the markdown template embedding file (goes into the "templates" dir)
                        -->
                        <xsl:variable name="embedfile" select="concat('tmp-', $tid, '-', $edbusiness, '.html')"/>
                        <xsl:variable name="fctmembed">
                            <!-- frontmatter first -->
                            <xsl:call-template name="doFrontmatterArtifact">
                                <xsl:with-param name="title" select="'template'"/>
                                <xsl:with-param name="name">
                                    <xsl:value-of select="$templatename"/>
                                    <xsl:call-template name="getMessage">
                                        <xsl:with-param name="key" select="'xAsOfy'"/>
                                    </xsl:call-template>
                                    <xsl:value-of select="$xeffshort"/>
                                </xsl:with-param>
                            </xsl:call-template>
                            <!-- page content -->
                            <xsl:text>&#10;</xsl:text>
                            <xsl:text># </xsl:text>
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'template'"/>
                            </xsl:call-template>
                            <xsl:text>&#10;[</xsl:text>
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'backToRules'"/>
                            </xsl:call-template>
                            <xsl:text>](index.md)&#10;&#10;</xsl:text>
                            <div class="htmlembed">
                                <xsl:text>&#10;&#10;</xsl:text>
                                <xsl:text>### </xsl:text>
                                <StatusDot status="{$statusCode}"/>
                                <xsl:text> </xsl:text>
                                <xsl:copy-of select="$templatename"/> 
                                <xsl:call-template name="getMessage">
                                    <xsl:with-param name="key" select="'xAsOfy'"/>
                                </xsl:call-template>
                                <xsl:value-of select="$xeffshort"/>
                                <xsl:text>&#10;</xsl:text>
                                <HtmlEmbed src="{$embedfile}"> </HtmlEmbed>
                                <xsl:text>&#10;&#10;</xsl:text>
                            </div>
                        </xsl:variable>
                        <!-- 
                            III: emit the html file for this STATIC YYYY-MM-DD artifact into the "includes" dir
                        -->
                        <xsl:variable name="fntmhtml" select="concat($tmpdir, '/includes/tmp-', $tid, '-', $edbusiness, '.html')"/>
                        <xsl:result-document href="{$fntmhtml}" method="xhtml" indent="no" omit-xml-declaration="yes">
                            <xsl:copy-of select="$fctmhtml"/>
                        </xsl:result-document>
                        <!--
                            IV: emit the markdown template embedding file into the "templates" dir
                        -->
                        <xsl:variable name="fntmembed" select="concat($tmpdir, '/templates/tmp-', $tid, '-', $edbusiness, '.md')"/>
                        <xsl:result-document href="{$fntmembed}" method="xhtml" indent="no" omit-xml-declaration="yes">
                            <xsl:copy-of select="$fctmembed"/>
                        </xsl:result-document>
                        <!--
                            V: if this STATIC YYYY-MM-DD artifact is also the latest artifact, re-emit it as DYNAMIC
                        -->
                        <xsl:variable name="maxstaticdate" select="max($alltm[(@id=$tid)][@statusCode = ('draft', 'active', 'review', 'pending')]/xs:dateTime(@effectiveDate))"/>
                        <xsl:variable name="maxstatic" select="replace(string($maxstaticdate),':','')"/>
                        <xsl:if test="$edbusiness=$maxstatic">
                            <xsl:variable name="fntmhtmldyn" select="concat($tmpdir, '/includes/tmp-', $tid, '-DYNAMIC.html')"/>
                            <xsl:result-document href="{$fntmhtmldyn}" method="xhtml" indent="no" omit-xml-declaration="yes">
                                <xsl:copy-of select="$fctmhtml"/>
                            </xsl:result-document>
                            <xsl:variable name="fntmembeddyn" select="concat($tmpdir, '/templates/tmp-', $tid, '-DYNAMIC.md')"/>
                            <xsl:result-document href="{$fntmembeddyn}" method="xhtml" indent="no" omit-xml-declaration="yes">
                                <xsl:copy-of select="$fctmembed"/>
                            </xsl:result-document>
                        </xsl:if>
                        <!--
                            VI: complete the artifact markdown overview file
                        -->
                        <xsl:variable name="tmfn4index" select="concat('/pages/templates/tmp-', $tid, '-', $edbusiness, '.md')"/>
                        <xsl:text>| </xsl:text>
                        <StatusDot status="{$statusCode}"/>
                        <xsl:text> | </xsl:text>
                        <xsl:text>[</xsl:text>
                        <xsl:value-of select="$templatename"/>
                        <xsl:text>](</xsl:text>
                        <xsl:value-of select="$tmfn4index"/>
                        <xsl:text>) </xsl:text>
                        <xsl:if test="@ident != $projectPrefix">
                            <span class="repobox">
                                <div class="repo ref sspacing">ref</div>
                                <div class="non-selectable repo refvalue sspacing">
                                    <xsl:value-of select="@ident"/>
                                </div>
                            </span>
                        </xsl:if>
                        <xsl:text> | </xsl:text>
                        <xsl:value-of select="$tid"/>
                        <xsl:text> | </xsl:text>
                        <xsl:value-of select="$xeffshort"/>
                        <xsl:text> |&#10;</xsl:text>
                        
                    </xsl:for-each-group>
                </xsl:for-each-group>
                
                <!-- this completes all writings on the wall, Sam -->
            </xsl:result-document>
            
        </xsl:if>
                
        <xsl:if test="$processValueSets='true'">
            <!--
                phase VS: value sets static and dynamic
                =====
                Create one summary for all value sets
                per value set with id and effective date
                  - create one rendering per effective date (version) with that id, e.g. vs-1.2.276.0.76.3.1.195.5.56-2015-09-18T000000.html
                  - create one dynamic rendering, i.e. vs-1.2.276.0.76.3.1.195.5.56-DYNAMIC.html
            -->
            
            <xsl:message terminate="no">
                <xsl:text>    * phase VS: value sets static and dynamic</xsl:text>
            </xsl:message>
            
            <!-- start with the later index.md for all artifacts of this type -->
            <xsl:result-document href="{$tmpdir}/valuesets/index.md" method="xhtml" indent="no" omit-xml-declaration="yes">
                <!-- frontmatter first -->
                <xsl:call-template name="doFrontmatterArtifact">
                    <xsl:with-param name="title" select="'valueSets'"/>
                    <xsl:with-param name="name">
                        <xsl:call-template name="getMessage">
                            <xsl:with-param name="key" select="'Overview'"/>
                        </xsl:call-template>
                    </xsl:with-param>
                </xsl:call-template>
                <!-- page content -->
                <xsl:text>&#10;</xsl:text>
                <xsl:text># </xsl:text>
                <xsl:call-template name="getMessage">
                    <xsl:with-param name="key" select="'valueSets'"/>
                </xsl:call-template>
                <xsl:text>&#10;</xsl:text>
                <xsl:text>| Status | Name | ID | Version |&#10;</xsl:text>
                <xsl:text>| :----: | ---- | -- | ------- |&#10;</xsl:text>
                
                <!-- now hush through all artifacts -->
                <xsl:for-each-group select="//terminology/valueSet" group-by="concat(@id | @ref, @effectiveDate)">
                    
                    <xsl:sort select="concat(@displayName,@name)"/>
                    
                    <!-- some inits -->
                    <xsl:variable name="vid" select="@id"/>
                    <xsl:variable name="statusCode" select="@statusCode"/>
                    <xsl:variable name="valuesetname">
                        <xsl:choose>
                            <xsl:when test="string-length(@displayName)>0">
                                <xsl:value-of select="@displayName"/>
                            </xsl:when>
                            <xsl:when test="string-length(@name)>0">
                                <xsl:value-of select="@name"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="getMessage">
                                    <xsl:with-param name="key" select="'rulesNoNameOrDisplaynameDefinedYet'"/>
                                </xsl:call-template>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <!-- create a time stamp based on effectiveDate as YYYY-MM-DDThhmmss (without the :) and an alternative shortcut timepstamp YYYY-MM-DD if time is T00:00:00 -->
                    <xsl:variable name="edbusiness" select="replace(@effectiveDate,':','')"/>
                    <xsl:variable name="xeffshort">
                        <xsl:choose>
                            <xsl:when test="string-length(substring-before(@effectiveDate, 'T00:00:00'))>0">
                                <xsl:value-of select="substring-before(@effectiveDate, 'T00:00:00')"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="replace(@effectiveDate, 'T', ' ')"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    
                    <xsl:if test="string-length($vid)>0">
                        
                        <!-- render it -->
                        <xsl:variable name="vsrendition">
                            <xsl:apply-templates select=".">
                                <xsl:with-param name="showOtherVersionsList" select="false()"/>
                            </xsl:apply-templates>
                        </xsl:variable>
                        
                        <!-- 
                            EXPOSITION PHASES
                            
                            I: create the html file content for this STATIC YYYY-MM-DD artifact (goes into the "includes" dir)
                        -->
                        <xsl:variable name="fcvshtml">
                            <xsl:apply-templates select="$vsrendition" mode="simplify"/>
                            <xsl:text>&#10;</xsl:text>
                        </xsl:variable>
                        <!-- 
                            II: create the html file content of the markdown template embedding file (goes into the "templates" dir)
                        -->
                        <xsl:variable name="embedfile" select="concat('vs-', $vid, '-', $edbusiness, '.html')"/>
                        <xsl:variable name="fcvsembed">
                            <!-- frontmatter first -->
                            <xsl:call-template name="doFrontmatterArtifact">
                                <xsl:with-param name="title" select="'valueSet'"/>
                                <xsl:with-param name="name">
                                    <xsl:value-of select="$valuesetname"/>
                                    <xsl:call-template name="getMessage">
                                        <xsl:with-param name="key" select="'xAsOfy'"/>
                                    </xsl:call-template>
                                    <xsl:value-of select="$xeffshort"/>
                                </xsl:with-param>
                            </xsl:call-template>
                            <!-- page content -->
                            <xsl:text>&#10;</xsl:text>
                            <xsl:text># </xsl:text>
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'valueSet'"/>
                            </xsl:call-template>
                            <xsl:text>&#10;[</xsl:text>
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'backToTerminology'"/>
                            </xsl:call-template>
                            <xsl:text>](index.md)&#10;&#10;</xsl:text>
                            <div class="htmlembed">
                                <xsl:text>&#10;&#10;</xsl:text>
                                <xsl:text>### </xsl:text>
                                <StatusDot status="{$statusCode}"/>
                                <xsl:text> </xsl:text>
                                <xsl:copy-of select="$valuesetname"/> 
                                <xsl:call-template name="getMessage">
                                    <xsl:with-param name="key" select="'xAsOfy'"/>
                                </xsl:call-template>
                                <xsl:value-of select="$xeffshort"/>
                                <xsl:text>&#10;</xsl:text>
                                <HtmlEmbed src="{$embedfile}"> </HtmlEmbed>
                                <xsl:text>&#10;&#10;</xsl:text>
                            </div>
                        </xsl:variable>
                        <!-- 
                            III: emit the html file for this STATIC YYYY-MM-DD artifact into the "includes" dir
                        -->
                        <xsl:variable name="fnvshtml" select="concat($tmpdir, '/includes/vs-', $vid, '-', $edbusiness, '.html')"/>
                        <xsl:result-document href="{$fnvshtml}" method="xhtml" indent="no" omit-xml-declaration="yes">
                            <xsl:copy-of select="$fcvshtml"/>
                        </xsl:result-document>
                        <!-- re-emit for voc prefix used by template reference -->
                        <xsl:variable name="fnvshtml2" select="concat($tmpdir, '/includes/voc-', $vid, '-', $edbusiness, '.html')"/>
                        <xsl:result-document href="{$fnvshtml2}" method="xhtml" indent="no" omit-xml-declaration="yes">
                            <xsl:copy-of select="$fcvshtml"/>
                        </xsl:result-document>
                        <!--
                            IV: emit the markdown template embedding file into the "valuesets" dir
                        -->
                        <xsl:variable name="fnvsembed" select="concat($tmpdir, '/valuesets/vs-', $vid, '-', $edbusiness, '.md')"/>
                        <xsl:result-document href="{$fnvsembed}" method="xhtml" indent="no" omit-xml-declaration="yes">
                            <xsl:copy-of select="$fcvsembed"/>
                        </xsl:result-document>
                        <!--
                            V: if this STATIC YYYY-MM-DD artifact is also the latest artifact, re-emit it as DYNAMIC
                        -->
                        <xsl:variable name="maxstaticdate" select="max($allvs[(@id=$vid)][@statusCode = ('draft', 'active', 'review', 'pending')]/xs:dateTime(@effectiveDate))"/>
                        <xsl:variable name="maxstatic" select="replace(string($maxstaticdate),':','')"/>
                        <xsl:if test="$edbusiness=$maxstatic">
                            <xsl:variable name="fnvshtmldyn" select="concat($tmpdir, '/includes/vs-', $vid, '-DYNAMIC.html')"/>
                            <xsl:result-document href="{$fnvshtmldyn}" method="xhtml" indent="no" omit-xml-declaration="yes">
                                <xsl:copy-of select="$fcvshtml"/>
                            </xsl:result-document>
                            <!-- re-emit for voc prefix used by template reference -->
                            <xsl:variable name="fnvshtmldyn2" select="concat($tmpdir, '/includes/voc-', $vid, '-DYNAMIC.html')"/>
                            <xsl:result-document href="{$fnvshtmldyn2}" method="xhtml" indent="no" omit-xml-declaration="yes">
                                <xsl:copy-of select="$fcvshtml"/>
                            </xsl:result-document>
                            <xsl:variable name="fnvsembeddyn" select="concat($tmpdir, '/valuesets/vs-', $vid, '-DYNAMIC.md')"/>
                            <xsl:result-document href="{$fnvsembeddyn}" method="xhtml" indent="no" omit-xml-declaration="yes">
                                <xsl:copy-of select="$fcvsembed"/>
                            </xsl:result-document>
                        </xsl:if>
                        <!--
                            VI: complete the artifact markdown overview file
                        -->
                        <xsl:variable name="vsfn4index" select="concat('/pages/valuesets/vs-', $vid, '-', $edbusiness, '.md')"/>
                        <xsl:text>| </xsl:text>
                        <StatusDot status="{$statusCode}"/>
                        <xsl:text> | </xsl:text>
                        <xsl:text>[</xsl:text>
                        <xsl:value-of select="$valuesetname"/>
                        <xsl:text>](</xsl:text>
                        <xsl:value-of select="$vsfn4index"/>
                        <xsl:text>) </xsl:text>
                        <xsl:if test="@ident != $projectPrefix">
                            <span class="repobox">
                                <div class="repo ref sspacing">ref</div>
                                <div class="non-selectable repo refvalue sspacing">
                                    <xsl:value-of select="@ident"/>
                                </div>
                            </span>
                        </xsl:if>
                        <xsl:text> | </xsl:text>
                        <xsl:value-of select="$vid"/>
                        <xsl:text> | </xsl:text>
                        <xsl:value-of select="$xeffshort"/>
                        <xsl:text> |&#10;</xsl:text>
                        
                    </xsl:if>
                </xsl:for-each-group>
            
                <!-- this completes all writings on the wall, Sam -->
            </xsl:result-document>
            
        </xsl:if>
            
        <xsl:if test="$processCodeSystems='true'">
            <!--
                phase CS: code systems static and dynamic
                =====
                Create one summary for all code systems
                per code system with id and effective date
                  - create one rendering per effective date (version) with that id, e.g. cs-1.2.276.0.76.3.1.195.5.56-2015-09-18T000000.html
                  - create one dynamic rendering, i.e. cs-1.2.276.0.76.3.1.195.5.56-DYNAMIC.html
            -->
            <xsl:message terminate="no">
                <xsl:text>    * phase CS code system static and dynamic</xsl:text>
            </xsl:message>
            
            <!-- start with the later index.md for all artifacts of this type -->
            <xsl:result-document href="{$tmpdir}/codesystems/index.md" method="xhtml" indent="no" omit-xml-declaration="yes">
                <!-- frontmatter first -->
                <xsl:call-template name="doFrontmatterArtifact">
                    <xsl:with-param name="title" select="'CodeSystems'"/>
                    <xsl:with-param name="name">
                        <xsl:call-template name="getMessage">
                            <xsl:with-param name="key" select="'Overview'"/>
                        </xsl:call-template>
                    </xsl:with-param>
                </xsl:call-template>
                <!-- page content -->
                <xsl:text>&#10;</xsl:text>
                <xsl:text># </xsl:text>
                <xsl:call-template name="getMessage">
                    <xsl:with-param name="key" select="'CodeSystems'"/>
                </xsl:call-template>
                <xsl:text>&#10;</xsl:text>
                <xsl:text>| Status | Name | ID | Version |&#10;</xsl:text>
                <xsl:text>| :----: | ---- | -- | ------- |&#10;</xsl:text>
                
                <!-- now hush through all artifacts -->
                <xsl:for-each-group select="//terminology/codeSystem" group-by="concat(@id | @ref, @effectiveDate)">
                    
                    <xsl:sort select="concat(@displayName,@name)"/>
                    
                    <!-- some inits -->
                    <xsl:variable name="cid" select="@id"/>
                    <xsl:variable name="statusCode" select="@statusCode"/>
                    <xsl:variable name="codesystemname">
                        <xsl:choose>
                            <xsl:when test="string-length(@displayName)>0">
                                <xsl:value-of select="@displayName"/>
                            </xsl:when>
                            <xsl:when test="string-length(@name)>0">
                                <xsl:value-of select="@name"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name="getMessage">
                                    <xsl:with-param name="key" select="'rulesNoNameOrDisplaynameDefinedYet'"/>
                                </xsl:call-template>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <!-- create a time stamp based on effectiveDate as YYYY-MM-DDThhmmss (without the :) and an alternative shortcut timepstamp YYYY-MM-DD if time is T00:00:00 -->
                    <xsl:variable name="edbusiness" select="replace(@effectiveDate,':','')"/>
                    <xsl:variable name="xeffshort">
                        <xsl:choose>
                            <xsl:when test="string-length(substring-before(@effectiveDate, 'T00:00:00'))>0">
                                <xsl:value-of select="substring-before(@effectiveDate, 'T00:00:00')"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="replace(@effectiveDate, 'T', ' ')"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    
                    <xsl:if test="string-length($cid)>0">
                        
                        <!-- render it -->
                        <xsl:variable name="csrendition">
                            <xsl:apply-templates select=".">
                                <xsl:with-param name="showOtherVersionsList" select="false()"/>
                            </xsl:apply-templates>
                        </xsl:variable>
                        
                        <!-- 
                            EXPOSITION PHASES
                            
                            I: create the html file content for this STATIC YYYY-MM-DD artifact (goes into the "includes" dir)
                        -->
                        <xsl:variable name="fccshtml">
                            <xsl:apply-templates select="$csrendition" mode="simplify"/>
                            <xsl:text>&#10;</xsl:text>
                        </xsl:variable>
                        <!-- 
                            II: create the html file content of the markdown template embedding file (goes into the "templates" dir)
                        -->
                        <xsl:variable name="embedfile" select="concat('cs-', $cid, '-', $edbusiness, '.html')"/>
                        <xsl:variable name="fccsembed">
                            <!-- frontmatter first -->
                            <xsl:call-template name="doFrontmatterArtifact">
                                <xsl:with-param name="title" select="'CodeSystem'"/>
                                <xsl:with-param name="name">
                                    <xsl:value-of select="$codesystemname"/>
                                    <xsl:call-template name="getMessage">
                                        <xsl:with-param name="key" select="'xAsOfy'"/>
                                    </xsl:call-template>
                                    <xsl:value-of select="$xeffshort"/>
                                </xsl:with-param>
                            </xsl:call-template>
                            <!-- page content -->
                            <xsl:text>&#10;</xsl:text>
                            <xsl:text># </xsl:text>
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'CodeSystem'"/>
                            </xsl:call-template>
                            <xsl:text>&#10;[</xsl:text>
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'backToTerminology'"/>
                            </xsl:call-template>
                            <xsl:text>](index.md)&#10;&#10;</xsl:text>
                            <div class="htmlembed">
                                <xsl:text>&#10;&#10;</xsl:text>
                                <xsl:text>### </xsl:text>
                                <StatusDot status="{$statusCode}"/>
                                <xsl:text> </xsl:text>
                                <xsl:copy-of select="$codesystemname"/> 
                                <xsl:call-template name="getMessage">
                                    <xsl:with-param name="key" select="'xAsOfy'"/>
                                </xsl:call-template>
                                <xsl:value-of select="$xeffshort"/>
                                <xsl:text>&#10;</xsl:text>
                                <HtmlEmbed src="{$embedfile}"> </HtmlEmbed>
                                <xsl:text>&#10;&#10;</xsl:text>
                            </div>
                        </xsl:variable>
                        <!-- 
                            III: emit the html file for this STATIC YYYY-MM-DD artifact into the "includes" dir
                        -->
                        <xsl:variable name="fncshtml" select="concat($tmpdir, '/includes/cs-', $cid, '-', $edbusiness, '.html')"/>
                        <xsl:result-document href="{$fncshtml}" method="xhtml" indent="no" omit-xml-declaration="yes">
                            <xsl:copy-of select="$fccshtml"/>
                        </xsl:result-document>
                        <!--
                            IV: emit the markdown template embedding file into the target dir
                        -->
                        <xsl:variable name="fncsembed" select="concat($tmpdir, '/codesystems/cs-', $cid, '-', $edbusiness, '.md')"/>
                        <xsl:result-document href="{$fncsembed}" method="xhtml" indent="no" omit-xml-declaration="yes">
                            <xsl:copy-of select="$fccsembed"/>
                        </xsl:result-document>
                        <!--
                            V: if this STATIC YYYY-MM-DD artifact is also the latest artifact, re-emit it as DYNAMIC
                        -->
                        <xsl:variable name="maxstaticdate" select="max($allvs[(@id=$cid)][@statusCode = ('draft', 'active', 'review', 'pending')]/xs:dateTime(@effectiveDate))"/>
                        <xsl:variable name="maxstatic" select="replace(string($maxstaticdate),':','')"/>
                        <xsl:if test="$edbusiness=$maxstatic">
                            <xsl:variable name="fncshtmldyn" select="concat($tmpdir, '/includes/cs-', $cid, '-DYNAMIC.html')"/>
                            <xsl:result-document href="{$fncshtmldyn}" method="xhtml" indent="no" omit-xml-declaration="yes">
                                <xsl:copy-of select="$fccshtml"/>
                            </xsl:result-document>
                            <xsl:variable name="fncsembeddyn" select="concat($tmpdir, '/codesystems/cs-', $cid, '-DYNAMIC.md')"/>
                            <xsl:result-document href="{$fncsembeddyn}" method="xhtml" indent="no" omit-xml-declaration="yes">
                                <xsl:copy-of select="$fccsembed"/>
                            </xsl:result-document>
                        </xsl:if>
                        <!--
                            VI: complete the artifact markdown overview file
                        -->
                        <xsl:variable name="csfn4index" select="concat('/pages/codesystems/cs-', $cid, '-', $edbusiness, '.md')"/>
                        <xsl:text>| </xsl:text>
                        <StatusDot status="{$statusCode}"/>
                        <xsl:text> | </xsl:text>
                        <xsl:text>[</xsl:text>
                        <xsl:value-of select="$codesystemname"/>
                        <xsl:text>](</xsl:text>
                        <xsl:value-of select="$csfn4index"/>
                        <xsl:text>) </xsl:text>
                        <xsl:if test="@ident != $projectPrefix">
                            <span class="repobox">
                                <div class="repo ref sspacing">ref</div>
                                <div class="non-selectable repo refvalue sspacing">
                                    <xsl:value-of select="@ident"/>
                                </div>
                            </span>
                        </xsl:if>
                        <xsl:text> | </xsl:text>
                        <xsl:value-of select="$cid"/>
                        <xsl:text> | </xsl:text>
                        <xsl:value-of select="$xeffshort"/>
                        <xsl:text> |&#10;</xsl:text>
                        
                    </xsl:if>
                </xsl:for-each-group>
                
                <!-- this completes all writings on the wall, Sam -->
            </xsl:result-document>
        </xsl:if>
        
        <xsl:if test="$processScenarios='true2222222222222'">
            <!--
                phase SC: scenarios/transactions
                =====
                Create one summary for all scenarios/transactions
                per scenario/transaction with id and effective date
                  - create one rendering per effective date (version) with that id, e.g. sc-1.2.276.0.76.3.1.195.5.56-2015-09-18T000000.html
                  - create one dynamic rendering, i.e. sc-1.2.276.0.76.3.1.195.5.56-DYNAMIC.html
            -->
            <xsl:message terminate="no">
                <xsl:text>    * phase SC scenarios/transactions static and dynamic</xsl:text>
            </xsl:message>
            <!-- go through all unique transactions and create the index page -->
            <xsl:for-each-group select="//scenario//transaction" group-by="@id">
                <xsl:variable name="tid" select="@id"/>
                <xsl:variable name="statusCode" select="@statusCode"/>
                <xsl:variable name="tname" select="name[@language=$language]"/>
                <xsl:variable name="ttype">
                    <xsl:choose>
                        <xsl:when test="@type='group'">
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'Group'"/>
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="@type='initial'">
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'transactionDirectioninitial'"/>
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="@type='back'">
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'transactionDirectionback'"/>
                            </xsl:call-template>
                        </xsl:when>
                        <xsl:when test="@type='stationary'">
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'transactionDirectionstationary'"/>
                            </xsl:call-template>
                        </xsl:when>
                    </xsl:choose>
                </xsl:variable>
                <xsl:choose>
                    <xsl:when test="$adram='mediawiki'">
                        <xsl:variable name="fnixtxt" select="concat($tmpdir, '/tr-', $tid, '.txt')"/>
                        <ix artefact="TR" fn="{$fnixtxt}" wiki="{$tid}" type="text" id="{$tid}" statusCode="{$statusCode}">
                            <name>
                                <xsl:value-of select="$tname"/>
                                <xsl:value-of select="concat(' (', $ttype, ')')"/>
                            </name>
                        </ix>
                        <xsl:result-document href="{$fnixtxt}" method="text" indent="no" omit-xml-declaration="yes">
                            <xsl:text>__NOTOC__</xsl:text>
                            <xsl:call-template name="nomanualeditstext"/>
                            <xsl:text>&#10;</xsl:text>
                            <xsl:text>[[Category:Transaction]]</xsl:text>
                            <xsl:text>&#10;</xsl:text>
                            <xsl:text>=</xsl:text>
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'Transaction'"/>
                            </xsl:call-template>
                            <xsl:text>'' </xsl:text>
                            <xsl:value-of select="$tname"/>
                            <xsl:text>'' (</xsl:text>
                            <xsl:value-of select="$ttype"/>
                            <xsl:text>)=</xsl:text>
                            <xsl:text>&#10;</xsl:text>
                            <xsl:if test="desc[@language=$language]">
                                <!--
                                                <xsl:text>==</xsl:text>
                                                <xsl:call-template name="getMessage">
                                                    <xsl:with-param name="key" select="'wikidescription'"/>
                                                </xsl:call-template>
                                                <xsl:text>==</xsl:text>
                                                <xsl:text>&#10;</xsl:text>
                                                -->
                                <xsl:text>&lt;p></xsl:text>
                                <xsl:copy-of select="desc[@language=$language]"/>
                                <xsl:text>&lt;/p></xsl:text>
                                <xsl:text>&#10;</xsl:text>
                            </xsl:if>
                            <xsl:text>&#10;</xsl:text>
                            <xsl:text>==</xsl:text>
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'wikilisttransactionversions'"/>
                            </xsl:call-template>
                            <xsl:text>==</xsl:text>
                            <xsl:text>&#10;</xsl:text>
                            <xsl:for-each select="//scenario//transaction[@id=$tid]">
                                <xsl:variable name="edd" select="@effectiveDate"/>
                                <xsl:text>* </xsl:text>
                                <xsl:call-template name="doLinkItem">
                                    <xsl:with-param name="page">
                                        <xsl:value-of select="$tid"/>
                                        <xsl:text>/static-</xsl:text>
                                        <xsl:value-of select="replace(@effectiveDate,':','')"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="label">
                                        <xsl:value-of select="$edd"/>
                                        <xsl:text> (</xsl:text>
                                        <xsl:call-template name="getMessage">
                                            <xsl:with-param name="key" select="concat('ItemStatusCodeLifeCycle-',@statusCode)"/>
                                        </xsl:call-template>
                                        <xsl:text>)</xsl:text>
                                    </xsl:with-param>
                                </xsl:call-template>
                                <xsl:text>&#10;</xsl:text>
                            </xsl:for-each>
                            <xsl:if test="@type!='group'">
                                <xsl:text>==</xsl:text>
                                <xsl:call-template name="getMessage">
                                    <xsl:with-param name="key" select="'Hierarchicallist'"/>
                                </xsl:call-template>
                                <xsl:text>==</xsl:text>
                                <xsl:text>&#10;</xsl:text>
                                <xsl:text>{{:{{BASEPAGENAME}}/hlist}}</xsl:text>
                                <xsl:text>&#10;</xsl:text>
                            </xsl:if>
                        </xsl:result-document>
                    </xsl:when>
                    <xsl:when test="$adram='confluence'">
                        <xsl:variable name="fnr" select="concat($tmpdir, '/tr-', $tid, '.html')"/>
                        <ix artefact="TR" fn="{$fnr}" wiki="{$tid}" type="html" id="{@id}" statusCode="{$statusCode}">
                            <name>
                                <xsl:value-of select="$tname"/>
                                <xsl:value-of select="concat(' (', $ttype, ')')"/>
                            </name>
                        </ix>
                        <xsl:result-document href="{$fnr}" format="xhtml">
                            <div>
                                <h1>
                                    <xsl:call-template name="getMessage">
                                        <xsl:with-param name="key" select="'Transaction'"/>
                                    </xsl:call-template>
                                    <i>
                                        <xsl:value-of select="$tname"/>
                                    </i>
                                    <xsl:text> (</xsl:text>
                                    <xsl:value-of select="$ttype"/>
                                    <xsl:text>)</xsl:text>
                                </h1>
                                <xsl:if test="desc[@language=$language]">
                                    <!--
                                                    <h2>
                                                        <xsl:call-template name="getMessage">
                                                            <xsl:with-param name="key" select="'wikidescription'"/>
                                                        </xsl:call-template>
                                                    </h2>
                                                    <xsl:text>&#10;</xsl:text>
                                                    -->
                                    <p>
                                        <xsl:copy-of select="desc[@language=$language]"/>
                                    </p>
                                    <xsl:text>&#10;</xsl:text>
                                </xsl:if>
                                <xsl:text>&#10;</xsl:text>
                                <h2>
                                    <xsl:call-template name="getMessage">
                                        <xsl:with-param name="key" select="'wikilisttransactionversions'"/>
                                    </xsl:call-template>
                                </h2>
                                <xsl:text>&#10;</xsl:text>
                                <ul>
                                    <xsl:for-each select="//scenario//transaction[@id=$tid]">
                                        <xsl:variable name="edd" select="@effectiveDate"/>
                                        <li>
                                            <xsl:call-template name="doLinkItem">
                                                <xsl:with-param name="page" select="concat($tid, '/static-', replace(@effectiveDate,':',''))"/>
                                                <xsl:with-param name="label" select="$edd"/>
                                            </xsl:call-template>
                                            <xsl:text> (</xsl:text>
                                            <xsl:call-template name="getMessage">
                                                <xsl:with-param name="key" select="concat('TemplateStatusCodeLifeCycle-',@statusCode)"/>
                                            </xsl:call-template>
                                            <xsl:text>)</xsl:text>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                                <xsl:text>&#10;</xsl:text>
                                <xsl:if test="@type!='group'">
                                    <h2>
                                        <xsl:call-template name="getMessage">
                                            <xsl:with-param name="key" select="'Hierarchicallist'"/>
                                        </xsl:call-template>
                                    </h2>
                                    <xsl:text>&#10;</xsl:text>
                                    <xsl:call-template name="doConfluenceIncludePageMacro">
                                        <xsl:with-param name="page" select="concat($tid, '/hlist')"/>
                                    </xsl:call-template>
                                    <xsl:text>&#10;</xsl:text>
                                </xsl:if>
                            </div>
                        </xsl:result-document>
                    </xsl:when>
                    <xsl:when test="$adram='wordpress'">
                        <xsl:variable name="fnr" select="concat($tmpdir, '/tr-', $tid, '.html')"/>
                        <ix artefact="TR" fn="{$fnr}" wiki="{$tid}" type="html" id="{@id}" statusCode="{$statusCode}">
                            <name>
                                <xsl:value-of select="$tname"/>
                                <xsl:value-of select="concat(' (', $ttype, ')')"/>
                            </name>
                        </ix>
                        <xsl:result-document href="{$fnr}" format="xhtml">
                            <p>
                                <h1>
                                    <xsl:call-template name="getMessage">
                                        <xsl:with-param name="key" select="'Transaction'"/>
                                    </xsl:call-template>
                                    <i>
                                        <xsl:value-of select="$tname"/>
                                    </i>
                                    <xsl:text> (</xsl:text>
                                    <xsl:value-of select="$ttype"/>
                                    <xsl:text>)</xsl:text>
                                </h1>
                                <xsl:if test="desc[@language=$language]">
                                    <!--
                                                    <h2>
                                                        <xsl:call-template name="getMessage">
                                                            <xsl:with-param name="key" select="'wikidescription'"/>
                                                        </xsl:call-template>
                                                    </h2>
                                                    <xsl:text>&#10;</xsl:text>
                                                    -->
                                    <p>
                                        <xsl:copy-of select="desc[@language=$language]"/>
                                    </p>
                                    <xsl:text>&#10;</xsl:text>
                                </xsl:if>
                                <xsl:text>&#10;</xsl:text>
                                <h2>
                                    <xsl:call-template name="getMessage">
                                        <xsl:with-param name="key" select="'wikilisttransactionversions'"/>
                                    </xsl:call-template>
                                </h2>
                                <xsl:text>&#10;</xsl:text>
                                <ul>
                                    <xsl:for-each select="//scenario//transaction[@id=$tid]">
                                        <xsl:variable name="edd" select="@effectiveDate"/>
                                        <li>
                                            <xsl:call-template name="doLinkItem">
                                                <xsl:with-param name="page" select="concat($tid, '/static-', replace(@effectiveDate,':',''))"/>
                                                <xsl:with-param name="label" select="$edd"/>
                                            </xsl:call-template>
                                            <xsl:text> (</xsl:text>
                                            <xsl:call-template name="getMessage">
                                                <xsl:with-param name="key" select="concat('TemplateStatusCodeLifeCycle-',@statusCode)"/>
                                            </xsl:call-template>
                                            <xsl:text>)</xsl:text>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                                <xsl:text>&#10;</xsl:text>
                                <xsl:if test="@type!='group'">
                                    <h2>
                                        <xsl:call-template name="getMessage">
                                            <xsl:with-param name="key" select="'Hierarchicallist'"/>
                                        </xsl:call-template>
                                    </h2>
                                    <xsl:text>&#10;</xsl:text>
                                    <xsl:call-template name="doWordpressIncludePageMacro">
                                        <xsl:with-param name="page" select="concat($tid, '/hlist')"/>
                                    </xsl:call-template>
                                    <xsl:text>&#10;</xsl:text>
                                </xsl:if>
                            </p>
                        </xsl:result-document>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each-group>
            <!-- go through all versions of all transactions -->
            <xsl:for-each select="//scenario//transaction">
                <xsl:variable name="tid" select="@id"/>
                <xsl:variable name="statusCode" select="@statusCode"/>
                <xsl:variable name="tname" select="name[@language=$language]"/>
                <xsl:variable name="oed" select="@effectiveDate"/>
                <xsl:variable name="ed" select="replace($oed,':','')"/>
                <xsl:variable name="prefix" select="ancestor::decor/project/@prefix"/>
                <!-- type is "group" (type G of the graph), or one of "initial", "back" "stationary" (type L of the graph) -->
                <xsl:variable name="tty" select="@type"/>
                <!-- base transation file -->
                <xsl:variable name="fnhtml" select="concat($tmpdir, '/tr-', $tid, '-', $ed, '.html')"/>
                <xsl:variable name="wikihtml" select="concat($tid, '/static-', $ed)"/>
                <!-- corresponding svg file -->
                <xsl:variable name="fnsvg" select="concat($tmpdir, '/tr-', $tid, '-', $ed, '.svg')"/>
                <xsl:variable name="wikisvg" select="concat('TR-', $tid, '-', $ed, '.svg')"/>
                <xsl:choose>
                    <xsl:when test="$adram='mediawiki'">
                        <xsl:result-document href="{$fnhtml}" method="xhtml" indent="no" omit-xml-declaration="yes">
                            <xsl:comment>
                                                <xsl:text>TRANSACTION </xsl:text>
                                                <xsl:value-of select="$tid"/>
                                                <xsl:text> as of </xsl:text>
                                                <xsl:value-of select="$oed"/>
                                                <xsl:text> (</xsl:text>
                                                <xsl:value-of select="@type"/>
                                                <xsl:text>)</xsl:text>
                                            </xsl:comment>
                            <xsl:text>&#10;</xsl:text>
                            <xsl:text>[[File:</xsl:text>
                            <xsl:value-of select="$wikisvg"/>
                            <xsl:text>|class=art-decor-responsive-img]]</xsl:text>
                        </xsl:result-document>
                    </xsl:when>
                    <xsl:when test="$adram='confluence'">
                        <xsl:result-document href="{$fnhtml}" method="xhtml" indent="no" omit-xml-declaration="yes">
                            <img class="confluence art-decor-responsive-img" role="img" src="{$wikisvg}" alt="Automatic ADBot image"/>
                        </xsl:result-document>
                    </xsl:when>
                    <xsl:when test="$adram='wordpress'">
                        <xsl:result-document href="{$fnhtml}" method="xhtml" indent="no" omit-xml-declaration="yes">
                            <img class="alignnone art-decor-responsive-img" role="img" src="/wp-content/uploads/{$wikisvg}" alt="Automatic ADBot image"/>
                        </xsl:result-document>
                    </xsl:when>
                </xsl:choose>
        
                <xsl:variable name="theSVG">
                    <xsl:choose>
                        <xsl:when test="$tty='group'">
                            <!-- retrieve transaction group svg -->
                            <xsl:copy-of select="doc(concat($deeplinkprefixservicescascaded, 'RetrieveTransactionGroupDiagram?prefix=', $prefix, '&amp;id=',
                                                $tid, '&amp;effectiveDate=', $oed, '&amp;language=', $language, '&amp;format=hgraph&amp;inline=true'))"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <!-- retrieve transaction item svg -->
                            <xsl:copy-of select="doc(concat($deeplinkprefixservicescascaded, 'RetrieveConceptDiagram?transactionId=',
                                                $tid, '&amp;transactionEffectiveDate=', $oed, '&amp;language=', $language, '&amp;interactive=false'))"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>
                <xsl:variable name="tsvg">
                    <xsl:choose>
                        <xsl:when test="count($theSVG)>0">
                            <xsl:copy-of select="$theSVG//*[namespace-uri()='http://www.w3.org/2000/svg' and local-name()='svg']"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:message>WARN : +++ RetrieveTransactionGroupDiagram / RetrieveConceptDiagram failed for project <xsl:value-of select="$prefix"/>: Transaction id <xsl:value-of select="$tid"/> effectiveDate: <xsl:value-of select="$oed"/>
                            </xsl:message>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:variable>
                <xsl:if test="count($tsvg)>0">
                    <ix artefact="TR" fn="{$fnhtml}" wiki="{$wikihtml}" type="html" id="{$tid}" statusCode="{$statusCode}">
                        <diagram>
                            <xsl:value-of select="$tname"/>
                        </diagram>
                    </ix>
                    <ix artefact="TR" fn="{$fnsvg}" img="{$wikisvg}" type="svg" id="{$tid}" statusCode="{$statusCode}">
                        <diagram>
                            <xsl:value-of select="$tname"/>
                        </diagram>
                    </ix>
                    <xsl:result-document href="{$fnsvg}" method="xml" indent="no" omit-xml-declaration="yes">
                        <xsl:copy-of select="$tsvg"/>
                        <xsl:text>&#10;</xsl:text>
                    </xsl:result-document>
                </xsl:if>
        
                <!--
                                https://art-decor.org/decor/services/RetrieveTransactionGroupDiagram?prefix=demo5-&id=2.16.840.1.113883.3.1937.99.60.5.4.100&effectiveDate=2014-07-08T00%3A00%3A00&language=en-US
                                https://art-decor.org/decor/services/RetrieveConceptDiagram?id=2.16.840.1.113883.3.1937.99.60.5.2.20&effectiveDate=2014-07-08T00:00:00&transactionEffectiveDate=2014-07-08T00:00:00&language=en-US&transactionId=2.16.840.1.113883.3.1937.99.60.5.4.101
                                https://art-decor.org/decor/services/RetrieveConceptDiagram?transactionEffectiveDate=2014-07-08T00:00:00&language=en-US&transactionId=2.16.840.1.113883.3.1937.99.60.5.4.101
                                
                                https://art-decor.org/decor/services/RetrieveTransaction?id=2.16.840.1.113883.3.1937.99.60.5.4.101&language=en-US&effectiveDate=&format=hlist&hidecolumns=o
                                -->
                <!-- create hierarchical list for transaction (no groups) -->
                <xsl:if test="$processHierarchicalGraphs='true' and $tty!='group'">
                    <xsl:variable name="fnhghtml" select="concat($tmpdir, '/tr-', $tid, '-hlist.html')"/>
                    <xsl:variable name="wikitrhg" select="concat($tid, '/hlist')"/>
                    <xsl:variable name="theHgraph">
                        <xsl:copy-of select="doc(concat($deeplinkprefixservicescascaded, 'RetrieveTransaction?id=', $tid,
                                            '&amp;effectiveDate=&amp;language=', $language, '&amp;format=hlist&amp;hidecolumns=o'))"/>
                    </xsl:variable>
                    <xsl:variable name="hct">
                        <xsl:choose>
                            <xsl:when test="count($theHgraph)>0">
                                <xsl:copy-of select="$theHgraph"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:message>WARN : +++ RetrieveTransaction failed for project <xsl:value-of select="$prefix"/>: Transaction id <xsl:value-of select="$tid"/>
                                </xsl:message>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <xsl:if test="count($hct//body/table[2])>0">
                        <ix artefact="TR" fn="{$fnhghtml}" wiki="{$wikitrhg}" type="html" id="{@id}" statusCode="{$statusCode}">
                            <hlist>
                                <xsl:value-of select="$tname"/>
                            </hlist>
                        </ix>
                        <xsl:result-document href="{$fnhghtml}" method="xhtml" indent="no" omit-xml-declaration="yes">
                            <xsl:copy-of select="$hct//body/table[2]"/>
                            <xsl:text>&#10;</xsl:text>
                        </xsl:result-document>
                    </xsl:if>
                </xsl:if>
            </xsl:for-each>
        </xsl:if>

        <xsl:if test="$processDatasets='true2222222222222'">
            <!--
                phase DS: datasets
                =====
                Create one summary for all datasets
                per dataset with id and effective date
                  - create one rendering per effective date (version) with that id, e.g. ds-1.2.276.0.76.3.1.195.5.56-2015-09-18T000000.html
                  - create one dynamic rendering, i.e. ds-1.2.276.0.76.3.1.195.5.56-DYNAMIC.html
            -->
            <xsl:message terminate="no">
                <xsl:text>    * phase DS datasets static and dynamic</xsl:text>
            </xsl:message>
        </xsl:if>
    
        <!-- next emit the implementation guide pages if present -->
        <xsl:if test="$processImplementationGuide='true'">
            <xsl:message terminate="no">
                <xsl:text>    * phase IG implementation guide pages</xsl:text>
            </xsl:message>
            
            <xsl:apply-templates select="$theoneig/definition/page" mode="igpages">
                <xsl:with-param name="pagepath" select="concat($tmpdir, '/pages')"/>
            </xsl:apply-templates>
        </xsl:if>
        
        <!-- make the artifact summary -->
        <xsl:message terminate="no">
            <xsl:text>    * phase IG implementation guide artifact summary</xsl:text>
        </xsl:message>
        <xsl:variable name="fnasumm" select="concat($tmpdir, '/artifacts/index.md')"/>
        <xsl:result-document href="{$fnasumm}" method="text">
            <xsl:call-template name="doFrontmatterArtifact">
                <xsl:with-param name="title" select="'ArtifactSummary'"/>
                <xsl:with-param name="name" select="'Artifacts defined as part of this Implementation Guide'"/>
            </xsl:call-template>
            <!-- page content -->
            <xsl:text>&#10;&#10;</xsl:text>
            <xsl:text># </xsl:text>
            <xsl:call-template name="getMessage">
                <xsl:with-param name="key" select="'ArtifactSummary'"/>
                <xsl:with-param name="lang" select="$language"/>
            </xsl:call-template>
            <xsl:text>&#10;&#10;</xsl:text>
            <xsl:call-template name="getMessage">
                <xsl:with-param name="key" select="'ArtifactSummaryPageIntro'"/>
                <xsl:with-param name="lang" select="$language"/>
            </xsl:call-template>
            <xsl:text>&#10;&#10;</xsl:text>
            <xsl:text>|  | </xsl:text>
            <xsl:call-template name="getMessage">
                <xsl:with-param name="key" select="'Artifacts'"/>
                <xsl:with-param name="lang" select="$language"/>
            </xsl:call-template>
            <xsl:text> | </xsl:text>
            <xsl:call-template name="getMessage">
                <xsl:with-param name="key" select="'Count'"/>
                <xsl:with-param name="lang" select="$language"/>
            </xsl:call-template>
            <xsl:text>&#10;</xsl:text>
            <xsl:text>|-|------| ---: |&#10;</xsl:text>
            <xsl:text>| &lt;adimg project="true">&lt;/adimg> | **Models** | |&#10;</xsl:text>
            <xsl:if test="count($allds) > 0">
                <xsl:text>| &lt;adimg dataset="true">&lt;/adimg> | [Datasets](/pages/datasets) |</xsl:text>
                <xsl:value-of select="count($allds)"/>
                <xsl:text>|&#10;</xsl:text>
            </xsl:if>
            <xsl:if test="count($allsc) > 0">
                <xsl:text>| &lt;adimg scenario="true">&lt;/adimg> | [Scenarios / Transactions](/pages/scenarios) |</xsl:text>
                <xsl:value-of select="count($allsc)"/>
                <xsl:text>|&#10;</xsl:text>
            </xsl:if>
            <xsl:text>| &lt;adimg terminology="true">&lt;/adimg> | **Terminology** | |&#10;</xsl:text>
            <xsl:if test="count($allvs) > 0">
                <xsl:text>| &lt;adimg valueset="true">&lt;/adimg> | [Value Sets](/pages/valuesets) |</xsl:text>
                <xsl:value-of select="count($allvs)"/>
                <xsl:text>|&#10;</xsl:text>
            </xsl:if>
            <xsl:if test="count($allcs) > 0">
                <xsl:text>| &lt;adimg codesystem="true">&lt;/adimg> | [Code Systems](/pages/codesystems) |</xsl:text>
                <xsl:value-of select="count($allcs)"/>
                <xsl:text>|&#10;</xsl:text>
            </xsl:if>
            <xsl:if test="count($allcm) > 0">
                <xsl:text>| &lt;adimg conceptmap="true">&lt;/adimg> | [Concept Maps](/pages/conceptmaps) |</xsl:text>
                <xsl:value-of select="count($allcm)"/>
                <xsl:text>|&#10;</xsl:text>
            </xsl:if>
            <xsl:text>| &lt;adimg rules="true">&lt;/adimg> | **Rules** | |&#10;</xsl:text>
            <xsl:if test="count($alltm) > 0">
                <xsl:text>| &lt;adimg template="true">&lt;/adimg> | [Templates](/pages/templates) |</xsl:text>
                <xsl:value-of select="count($alltm)"/>
                <xsl:text>|&#10;</xsl:text>
            </xsl:if>
            <xsl:if test="count($allqq) > 0">
                <xsl:text>| &lt;adimg questionnaires="true">&lt;/adimg> | [Questionnaires](/pages/questionnaires) |</xsl:text>
                <xsl:value-of select="count($allqq)"/>
                <xsl:text>|&#10;</xsl:text>
            </xsl:if>
        </xsl:result-document>    
        
        <!-- finally emit the config.ts for vitepress -->
        <xsl:message terminate="no">
            <xsl:text>    * phase IG implementation guide config.ts for vitepress</xsl:text>
        </xsl:message>
        <xsl:variable name="fnconfig" select="concat($tmpdir, '/config.ts')"/>
        <xsl:result-document href="{$fnconfig}" method="text">
            <xsl:call-template name="makeConfigTs">
                <xsl:with-param name="title" select="'a'"/>
                <xsl:with-param name="name" select="'b'"/>
            </xsl:call-template>
        </xsl:result-document>    
            
    </xsl:template>
    
    <xsl:template match="page" mode="igpages">
        <xsl:param name="pagepath"/>
        <!-- 
             <definition>
               <page id="749a625b-ec4d-45db-9a62-5bec4d85dbc6" lastModifiedDate="2025-11-19T13:10:08">
                   <title language="en-US" lastTranslated="2025-11-19T12:34:49">Vaccination Templates (CDA)</title>
                   <content language="en-US" lastTranslated="2025-11-19T12:28:36">
                   HTML CONTENT
                   <page> ... sub pages </page>
               </page>
            </definition>
            
            write under tmp dir ig
            write the content into a file named index.md into a subdirectory directory named after @id, eg 0c7c0577-9497-4001-bc05-779497400174
        -->
        
       <xsl:for-each select=".">
           
           <xsl:variable name="pid" select="@id"/>
           <xsl:variable name="pp" select="concat($pagepath, '/', $pid)"/>
           
           <xsl:variable name="includings" select="concat($pid, '.html')"/>
           <xsl:variable name="includefile" select="concat($tmpdir, '/includes/', $includings)"/>
           <xsl:variable name="embedfile" select="concat($pp, '/index.md')"/>
           
           <xsl:variable name="pagetitle" select="title[@language=$language]"/>
           
           <!-- 
                I: create the markdown file for this page for the page directory
           -->
           <xsl:variable name="fcigembed">
               <!-- frontmatter first -->
               <xsl:call-template name="doFrontmatterArtifact">
                   <xsl:with-param name="title" select="'titelpageImplementationGuideline'"/>
                   <xsl:with-param name="name" select="'title-of-this-page'"/>
               </xsl:call-template>
               <!-- page content -->
               <xsl:text>&#10;</xsl:text>
               <xsl:text># </xsl:text>
               <xsl:value-of select="$pagetitle"/>
               <xsl:text>&#10;&#10;</xsl:text>
               <div class="htmlembed">
                   <xsl:text>&#10;&#10;</xsl:text>
                   <HtmlEmbed src="{$includings}"> </HtmlEmbed>
                   <xsl:text>&#10;&#10;</xsl:text>
               </div>
           </xsl:variable>
           <!--
               II: emit the html file for this page into the "includes" dir
           -->
           <xsl:variable name="simplyfiedpage">
               <xsl:apply-templates select="content[@language=$language]/node()" mode="simplify"/>
           </xsl:variable>
           <xsl:result-document href="{$includefile}" method="xhtml" indent="no" omit-xml-declaration="yes">
               <xsl:copy-of select="$simplyfiedpage"/>
           </xsl:result-document>
           <!--
               III: emit the markdown template embedding file into the "page" dir
           -->
           <xsl:result-document href="{$embedfile}" method="xhtml" indent="no" omit-xml-declaration="yes">
               <xsl:copy-of select="$fcigembed"/>
           </xsl:result-document>
           
           <xsl:message terminate="no">
               <xsl:text>       * page </xsl:text>
               <xsl:value-of select="@id"/>
               <xsl:text> into </xsl:text>
               <xsl:value-of select="$pp"/>
           </xsl:message>

           <!-- process recursively sub pages -->
           <xsl:apply-templates select="page" mode="igpages">
               <xsl:with-param name="pagepath" select="$pp"/>
           </xsl:apply-templates>

       </xsl:for-each>

    </xsl:template>
    
    <xsl:template match="page" mode="config">
        <xsl:param name="pagepath"/>
        <xsl:for-each select=".">
            
            <xsl:variable name="pid" select="@id"/>
            <xsl:variable name="pp" select="concat($pagepath, '/', $pid)"/>
            <xsl:variable name="pagetitle" select="title[@language=$language]"/>
            
            <xsl:text>{</xsl:text>
            <xsl:value-of select="concat('text: &quot;', $pagetitle , '&quot;,&#010;')"/>
            <xsl:value-of select="concat('link: &quot;/', $pp , '/&quot;,&#010;')"/>
            <xsl:value-of select="'collapsed: false,'"/>
            
            <xsl:if test="page">
                <xsl:text>items: [</xsl:text>
                <xsl:apply-templates select="page" mode="config">
                    <xsl:with-param name="pagepath" select="$pp"/>
                </xsl:apply-templates>
                <xsl:text>]</xsl:text>
            </xsl:if>
            
            <xsl:text>},</xsl:text>
            
        </xsl:for-each>
    </xsl:template>
    
    <xsl:template name="makeConfigTs">
        <xsl:param name="title"/>
        <xsl:param name="name"/>
        
        <!-- get prototype -->
        <xsl:variable name="tmp1">
            <xsl:call-template name="getConfigTsTemplate"/>
        </xsl:variable>
        
        <!-- replacements -->
        <xsl:variable name="i18npublication">
            <xsl:call-template name="getMessage">
                <xsl:with-param name="key" select="'Publication'"/>
                <xsl:with-param name="lang" select="$language"/>
            </xsl:call-template>
        </xsl:variable>
        
        <xsl:variable name="tmp2" select="replace($tmp1, '%%PUBLICATION%%', $i18npublication)"/>
        <xsl:variable name="tmp3" select="replace($tmp2, '%%PUBLICATION%%', $i18npublication)"/>
        
        <xsl:variable name="tmp4" select="replace($tmp3, '%%PROJECTURL%%', concat($deeplinkprefix3, $projectPrefix, 'project/overview'))"/>
        <xsl:variable name="tmp5" select="replace($tmp4, '%%PUBLOCATIONURL%%', $referenceurl)"/>
        
        <xsl:variable name="pages">
            <xsl:text>items: [</xsl:text>
            <xsl:apply-templates select="$theoneig/definition/page" mode="config">
                <xsl:with-param name="pagepath" select="concat($tmpdir, '/pages')"/>
            </xsl:apply-templates>
            <xsl:copy>
                <xsl:text>{text: '</xsl:text>
                <xsl:call-template name="getMessage">
                    <xsl:with-param name="key" select="'tabProjectInformation'"/>
                    <xsl:with-param name="lang" select="$language"/>
                </xsl:call-template>
                <xsl:text>', link: '/pages/project/', collapsed: false},&#010;</xsl:text>
                <xsl:text>{text: '</xsl:text>
                <xsl:call-template name="getMessage">
                    <xsl:with-param name="key" select="'Artifacts'"/>
                    <xsl:with-param name="lang" select="$language"/>
                </xsl:call-template>
                <xsl:text>', link: '/pages/artifacts/', collapsed: false,&#010;</xsl:text>
                <!-- all artefacts pages -->
                <xsl:text>items: [</xsl:text>
                <xsl:if test="count($allds) > 0">
                    <xsl:text>{text: 'Datasets', link: '/pages/datasets/', collapsed: false,},&#010;</xsl:text>
                </xsl:if>
                <xsl:if test="count($allsc) > 0">
                    <xsl:text>{text: 'Scenarios/Transactions', link: '/pages/scenarios/', collapsed: false,},&#010;</xsl:text>
                </xsl:if>
                <xsl:if test="count($allvs) > 0">
                    <xsl:text>{text: 'Value Sets', link: '/pages/valuesets/', collapsed: false,},&#010;</xsl:text>
                </xsl:if>
                <xsl:if test="count($allcs) > 0">
                    <xsl:text>{text: 'Code Systems', link: '/pages/codesystems/', collapsed: false,},&#010;</xsl:text>
                </xsl:if>
                <xsl:if test="count($allcm) > 0">
                    <xsl:text>{text: 'Concept Maps', link: '/pages/conceptmaps/', collapsed: false,},&#010;</xsl:text>
                </xsl:if>
                <xsl:if test="count($alltm) > 0">
                    <xsl:text>{text: 'Templates', link: '/pages/templates/', collapsed: false,}&#010;</xsl:text>
                </xsl:if>
                <!--<xsl:if test="count($allpr) > 0">
                    <xsl:text>{text: 'Profiles', link: '/pages/profiles/', collapsed: false,}&#010;</xsl:text>
                </xsl:if>-->
                <xsl:if test="count($allqq) > 0">
                    <xsl:text>{text: 'Questionnaires', link: '/pages/questionnaires/', collapsed: false,}&#010;</xsl:text>
                </xsl:if>
                <xsl:text>]</xsl:text>
                <xsl:text>}</xsl:text>
            </xsl:copy>
            <xsl:text>],</xsl:text>
        </xsl:variable>
        
        <xsl:variable name="tmp6" select="replace($tmp5, '%%SIDEBARPAGES%%', $pages)"/>
        
        <xsl:copy-of select="$tmp6"/>
        
    </xsl:template>
    
    <!-- 
        supporting local functions
    -->
    
    <xsl:function name="local:tmptypeorder" as="xs:string">
        <xsl:param name="type"/>
        <!-- gets a list of classification types of a template and returns order number -->
        <xsl:choose>
            <xsl:when test="$type='cdadocumentlevel'">A</xsl:when>
            <xsl:when test="$type='messagelevel'">B</xsl:when>
            <xsl:when test="$type='cdaheaderlevel'">C</xsl:when>
            <xsl:when test="$type='cdasectionlevel'">D</xsl:when>
            <xsl:when test="$type='cdaentrylevel'">E</xsl:when>
            <xsl:when test="$type='segmentlevel'">F</xsl:when>
            <xsl:when test="$type='clinicalstatementlevel'">G</xsl:when>
            <xsl:when test="$type='controlactlevel'">H</xsl:when>
            <xsl:when test="$type='datatypelevel'">I</xsl:when>
            <xsl:otherwise>X</xsl:otherwise>
        </xsl:choose>
    </xsl:function>
    
    <xsl:function name="local:tmptypename" as="xs:string">
        <xsl:param name="type"/>
        <!-- gets a list of classification types of a template and returns order number -->
        <xsl:choose>
            <xsl:when test="$type='cdadocumentlevel'">CDA Document Level</xsl:when>
            <xsl:when test="$type='messagelevel'">Message Level</xsl:when>
            <xsl:when test="$type='cdaheaderlevel'">CDA Header Level</xsl:when>
            <xsl:when test="$type='cdasectionlevel'">CDA Section Level</xsl:when>
            <xsl:when test="$type='cdaentrylevel'">CDA Entry Level</xsl:when>
            <xsl:when test="$type='segmentlevel'">Segment Level</xsl:when>
            <xsl:when test="$type='clinicalstatementlevel'">Clinical Statement Level</xsl:when>
            <xsl:when test="$type='controlactlevel'">Control Act Level</xsl:when>
            <xsl:when test="$type='datatypelevel'">Datatype Level</xsl:when>
            <xsl:otherwise>No Type</xsl:otherwise>
        </xsl:choose>
    </xsl:function>
    
    
    
    <!-- 
        emit data element of type "group" of a dataset
        - Show group element properties
        - walk through all child elements in given sequence
          - if a group is found tell it is a group and add the link to that group file
          - if it is an item show it on heading level higher wioth all properties
    -->
    <xsl:template match="concept" mode="elementtransfer">
        <xsl:param name="type"/>
        <xsl:param name="hlevel"/>
        <xsl:param name="headprefix"/>
        
        <xsl:variable name="dename" select="name[@language=$language]"/>
        <!-- 
            heading with the level indictaed in parameter
        -->
        <xsl:call-template name="doHeading">
            <xsl:with-param name="hlevel" select="$hlevel"/>
            <xsl:with-param name="heading" select="$dename"/>
            <xsl:with-param name="headprefix" select="$headprefix"/>
        </xsl:call-template>
        <xsl:text>&#10;</xsl:text>
        <!--
            description of this element, if any 
        -->
        <xsl:if test="desc[@language=$language]">
            <p>
                <xsl:copy-of select="desc[@language=$language]/node()"/>
            </p>
            <xsl:text>&#10;</xsl:text>
        </xsl:if>
        <!-- 
            valueDomain, rationale, source, operationalization of this element, if any
        -->
        <xsl:for-each select="valueDomain">
            <p>
                <b>
                    <xsl:call-template name="getMessage">
                        <xsl:with-param name="key" select="'ValueDomain'"/>
                    </xsl:call-template>
                    <xsl:text>: </xsl:text>
                </b>
                <xsl:value-of select="@type"/>
            </p>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="rationale[@language=$language]">
            <p>
                <b>
                    <xsl:call-template name="getMessage">
                        <xsl:with-param name="key" select="'Rationale'"/>
                    </xsl:call-template>
                    <xsl:text>: </xsl:text>
                </b>
                <xsl:copy-of select="node()"/>
            </p>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="source[@language=$language]">
            <p>
                <b>
                    <xsl:call-template name="getMessage">
                        <xsl:with-param name="key" select="'Source'"/>
                    </xsl:call-template>
                    <xsl:text>: </xsl:text>
                </b>
                <xsl:copy-of select="node()"/>
            </p>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="operationalization[@language=$language]">
            <p>
                <b>
                    <xsl:call-template name="getMessage">
                        <xsl:with-param name="key" select="'Operationalization'"/>
                    </xsl:call-template>
                    <xsl:text>: </xsl:text>
                </b>
                <xsl:copy-of select="node()"/>
            </p>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
        <!-- 
            show all terminology associations in a table if valueDomain is code and there are any terminology associations 
        -->
        <xsl:variable name="tas">
            <xsl:copy-of select="terminologyAssociation"/>
        </xsl:variable>
        <xsl:if test="count(valueDomain/conceptList/concept)>0">
            <p>
                <b>
                    <xsl:call-template name="getMessage">
                        <xsl:with-param name="key" select="'ConceptList'"/>
                    </xsl:call-template>
                </b>
            </p>
            <xsl:for-each select="valueDomain[@type='code'][conceptList/concept]">
                <table class="artdecor zebra-table" width="100%" border="0" cellspacing="1" cellpadding="2" style="background: transparent; border: 1px solid #C0C0C0;">
                    <!-- head of table -->
                    <tr>
                        <th style="text-align: left;">
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'Concept'"/>
                            </xsl:call-template>
                        </th>
                        <th style="text-align: left;">
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'Code'"/>
                            </xsl:call-template>
                        </th>
                        <th style="text-align: left;">
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'DisplayName'"/>
                            </xsl:call-template>
                        </th>
                        <th style="text-align: left;">
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="'CodeSystem'"/>
                            </xsl:call-template>
                        </th>
                    </tr>
                    <!-- terminology associations -->
                    <xsl:for-each select="conceptList/concept">
                        <xsl:variable name="cid" select="@id"/>
                        <xsl:variable name="bgcolor">
                            <!-- do the zebra -->
                            <xsl:choose>
                                <xsl:when test="position() mod 2">transparent</xsl:when>
                                <xsl:otherwise>#f7f7f7;</xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <xsl:variable name="rowspans" select="count($tas/terminologyAssociation[@conceptId=$cid])"/>
                        <xsl:variable name="firstcol">
                            <xsl:choose>
                                <xsl:when test="$rowspans = 1">
                                    <!-- only one terminology associations, normal table -->
                                    <td style="vertical-align: top;">
                                        <xsl:value-of select="name[@language=$language]"/>
                                    </td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <!-- more than one terminology associations and this is the first, normal table -->
                                    <td style="vertical-align: top;" rowspan="{$rowspans}">
                                        <xsl:value-of select="name[@language=$language]"/>
                                    </td>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <!-- the concept first, maxbe with rowspans -->
                        <!-- them all terminology associations in columns and rows behind it -->
                        <xsl:for-each select="$tas/terminologyAssociation[@conceptId=$cid]">
                            <tr style="background: {$bgcolor};">
                                <xsl:if test="position()=1">
                                    <xsl:copy-of select="$firstcol"/>
                                </xsl:if>
                                <td>
                                    <xsl:value-of select="@code"/>
                                </td>
                                <td>
                                    <xsl:value-of select="@displayName"/>
                                </td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="string-length(@codeSystemName)=0">
                                            <xsl:value-of select="@codeSystem"/>   
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="@codeSystemName"/>   
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    
                                </td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each>
                </table>
            </xsl:for-each>
        </xsl:if>
        <!-- 
            now run through all child concepts
            for an item show it's properties, heading one level up
            for a group item just show the name of the group and a link to the respective page
        -->
        <xsl:for-each select="concept">
            <xsl:variable name="dename" select="name[@language=$language]"/>
            <xsl:variable name="edd">
                <xsl:choose>
                    <xsl:when test="string-length(substring-before(@effectiveDate, 'T00:00:00'))>0">
                        <xsl:value-of select="substring-before(@effectiveDate, 'T00:00:00')"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="replace(@effectiveDate, 'T', ' ')"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <xsl:choose>
                <xsl:when test="@type='item'">
                    <xsl:apply-templates select="." mode="elementtransfer">
                        <xsl:with-param name="type" select="@type"/>
                        <xsl:with-param name="hlevel" select="$hlevel+1"/>
                    </xsl:apply-templates>
                    <xsl:text>&#10;</xsl:text>
                </xsl:when>
                <xsl:when test="@type='group'">
                    <xsl:call-template name="doHeading">
                        <xsl:with-param name="hlevel" select="$hlevel"/>
                        <xsl:with-param name="heading" select="$dename"/>
                    </xsl:call-template>
                    <xsl:text>&#10;</xsl:text>
                    <xsl:call-template name="getMessage">
                        <xsl:with-param name="key" select="'GroupOfDataelements'"/>
                    </xsl:call-template>
                    <xsl:text> </xsl:text>
                    <xsl:call-template name="getMessage">
                        <xsl:with-param name="key" select="'xAsOfy'"/>
                    </xsl:call-template>
                    <xsl:call-template name="doLinkItem">
                        <xsl:with-param name="page">
                            <xsl:value-of select="@id"/>
                            <xsl:text>/static-</xsl:text>
                            <xsl:value-of select="replace(@effectiveDate,':','')"/>
                        </xsl:with-param>
                        <xsl:with-param name="label">
                            <xsl:value-of select="$edd"/>
                            <xsl:text> (</xsl:text>
                            <xsl:call-template name="getMessage">
                                <xsl:with-param name="key" select="concat('ItemStatusCodeLifeCycle-',@statusCode)"/>
                            </xsl:call-template>
                            <xsl:text>)</xsl:text>
                        </xsl:with-param>
                    </xsl:call-template>
                    <xsl:text>&#10;</xsl:text>
                    
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
    <!-- 
        helpers and simplifiers
        =====
    -->
    <xsl:template match="xhtml:table" mode="simplify">
        <table xmlns="http://www.w3.org/1999/xhtml">
            <xsl:copy-of select="@* except (@class|@style)"/>
            <xsl:attribute name="class" select="concat('artdecor ', @class)"/>
            <xsl:attribute name="style" select="concat('background: transparent;', @style)"/>
            <xsl:apply-templates mode="simplify"/>
        </table>
    </xsl:template>
    
    <xsl:template match="br|xhtml:br" mode="simplify">
        <br xmlns="http://www.w3.org/1999/xhtml"/>
    </xsl:template>
    
    <xsl:template match="xhtml:th|xhtml:tr|xhtml:font|xhtml:i|xhtml:tt|xhtml:span|xhtml:strong|xhtml:ul|xhtml:li|xhtml:p" mode="simplify">
        <xsl:element xmlns="http://www.w3.org/1999/xhtml" name="{name()}">
            <xsl:copy-of select="@* except (@data-tt-id|@data-tt-parent-id)"/>
            <xsl:apply-templates mode="simplify"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="xhtml:td|xhtml:div" mode="simplify">
        <xsl:element xmlns="http://www.w3.org/1999/xhtml" name="{name()}">
            <xsl:copy-of select="@* except (@id | @onclick | @class)" copy-namespaces="no"/>
            <xsl:variable name="classes" as="xs:string*">
                <xsl:for-each select="tokenize(normalize-space(@class),'\s')">
                    <xsl:if test=". = ('conf', 'defvar', 'stron', 'tabtab', 'togglertreetable', 'explabelgreen', 'explabelred', 'explabelblue', 'note-box', 'repo', 'refonly',
                        'ad-diff-topbox', 'ad-diff-bottombox', 'nowrapinline', 'cdadocumentlevel', 'cdaheaderlevel', 'cdasectionlevel', 'cdaentrylevel',
                        'ad-templatetype',  'ad-dataset-itemnumber', 'ad-dataset-level1', 'ad-itemnumber-green', 'ad-itemnumber-blue', 'asinfo', 'asnote',
                        'assuccess', 'aswarning', 'aserror', 'cardColor', 'elementRowColor', 'conceptsColor', 'itemColor', 'firstLastColNeutralColor') 
                        or starts-with(., 'column')
                        or starts-with(., '__artdecor')">
                        <xsl:value-of select="."/>
                    </xsl:if>
                </xsl:for-each>
            </xsl:variable>
            <xsl:if test="not(empty($classes))">
                <xsl:attribute name="class" select="string-join($classes,' ')"/>
            </xsl:if>
            <xsl:apply-templates mode="simplify"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="xhtml:thead|xhtml:tbody" mode="simplify">
        <xsl:apply-templates mode="simplify"/>
    </xsl:template>
    
    <xsl:template match="xhtml:a" mode="simplify" priority="-1">
        <xsl:apply-templates mode="simplify"/>
    </xsl:template>
    
    <xsl:template match="xhtml:a[starts-with(@href, 'ds-')]" mode="simplify" priority="0">
        <a href="{concat('../datasets/', @href)}">
            <xsl:apply-templates mode="simplify"/>
        </a>
    </xsl:template>
    <xsl:template match="xhtml:a[starts-with(@href, 'sc-')]" mode="simplify" priority="0">
        <a href="{concat('../scenarios/', @href)}">
            <xsl:apply-templates mode="simplify"/>
        </a>
    </xsl:template>
    <xsl:template match="xhtml:a[starts-with(@href, 'voc-')]" mode="simplify" priority="0">
        <a href="{concat('../valuesets/vs-', replace(@href, 'voc-', ''))}">
            <xsl:apply-templates mode="simplify"/>
        </a>
    </xsl:template>
    <xsl:template match="xhtml:a[starts-with(@href, 'cs-')]" mode="simplify" priority="0">
        <a href="{concat('../codesystems/', @href)}">
            <xsl:apply-templates mode="simplify"/>
        </a>
    </xsl:template>
    <xsl:template match="xhtml:a[starts-with(@href, 'tmp-')]" mode="simplify" priority="0">
        <a href="{concat('../templates/', @href)}">
            <xsl:apply-templates mode="simplify"/>
        </a>
    </xsl:template>
    
    <xsl:template match="img[starts-with(@src, '/exist/apps/api/project/') and contains(@src, '/blob/')]" mode="simplify" priority="+2">
        <!-- got <img src=​"/​exist/​apps/​api/​project/​demo7-/​blob/​476a2c82-dcd2-4f48-aa2c-82dcd2ef480c">​ -->
        <xsl:variable name="uuid" select="tokenize(@src, '/')[last()]"/>
        <xsl:variable name="origfprefix" select="concat($theBaseURI2DECOR, '/', $projectPrefix, '-blob/', $uuid)"/>
        <xsl:variable name="newsrc">
            <xsl:choose>
                <!-- check what filename extension is for this referenced file -->
                <xsl:when test="doc-available(concat($origfprefix, '.png'))">
                    <xsl:value-of select="concat('/includes/', $uuid, '.png')"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="concat('/includes/', $uuid, '.png')"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <img src="{$newsrc}" alt="{$uuid}"> </img>
    </xsl:template>
    
    <xsl:template match="a" mode="simplify">
        <xsl:apply-templates mode="simplify"/>
    </xsl:template>
    
    <xsl:template match="*" mode="simplify" priority="-2">
        <xsl:copy-of select="." copy-namespaces="no" exclude-result-prefixes="#all"/>
    </xsl:template>
    
    <xsl:template match="*/text()[normalize-space(.)][../*]" mode="simplify">
        <xsl:variable name="tmp">
            <xsl:value-of select="translate(., '&#xA;', ' ')"/>
        </xsl:variable>
        <xsl:value-of select="translate($tmp, '&#xD;', ' ')"/>
    </xsl:template>
    
    <xsl:template match="text()" mode="simplify" priority="-2">
        <xsl:variable name="tmp">
            <xsl:value-of select="translate(., '&#xA;', ' ')"/>
        </xsl:variable>
        <xsl:value-of select="translate($tmp, '&#xD;', ' ')"/>
    </xsl:template>
    
    <xsl:template match="@*|node()" mode="simplify">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" mode="simplify"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="xhtml:img" mode="simplify">
        <!-- replace local assets path ../assets/x.png to top level icons/ use -->
        <xsl:variable name="imgsrc" select="replace(@src, '\.\./assets', '/icons')"/>
        <img xmlns="http://www.w3.org/1999/xhtml" style="width: 16px; display: inline !important;" src="{$imgsrc}" alt=""> </img>
    </xsl:template>
    
    <xsl:template match="xhtml:th[@style='width: 20em; text-align: left;']" mode="simplify">
        <th xmlns="http://www.w3.org/1999/xhtml" style="width: 15em; text-align: left;">
            <xsl:copy-of select="@* except @style"/>
            <xsl:copy-of select="node()" copy-namespaces="no" exclude-result-prefixes="#all"/>
        </th>
    </xsl:template>
    
    <xsl:template match="xhtml:a[starts-with(@href, 'tm::')]" mode="simplify">
        <!-- modify tm:: marker,
            e.g.
            <a href="tm::2.16.840.1.113883.3.1937.99.60.7.10.1.2/2022-01-31T00:00:00"
            class="__artdecor__a__inline__artifact __artdecor_tm"
            onclick="event.stopPropagation(); event.preventDefault(); return">
            
            and build local link file in the artifact page, eg templates
            tmp-2.16.840.1.113883.3.1937.99.60.7.10.2.1-2013-10-10T000000.md
            that embeds
            tmp-2.16.840.1.113883.3.1937.99.60.7.10.2.1-2013-10-10T000000.html
        -->
        <xsl:variable name="tmp1" select="replace(@href, 'tm::|:', '')"/>
        <xsl:variable name="tmp2" select="replace($tmp1, '/', '-')"/>
        <xsl:variable name="newhref" select="concat('/pages/templates/tmp-', $tmp2)"/>
        <a href="{$newhref}" class="{@class}">
            <xsl:value-of select="text()"/>
        </a>
    </xsl:template>
    <xsl:template match="xhtml:a[starts-with(@href, 'ds::')]" mode="simplify">
        <!-- modify ds:: marker, see tm:: above -->
        <xsl:variable name="tmp1" select="replace(@href, 'ds::|:', '')"/>
        <xsl:variable name="tmp2" select="replace($tmp1, '/', '-')"/>
        <xsl:variable name="newhref" select="concat('/pages/datasets/ds-', $tmp2)"/>
        <a href="{$newhref}" class="{@class}">
            <xsl:value-of select="text()"/>
        </a>
    </xsl:template>
    <xsl:template match="xhtml:a[starts-with(@href, 'vs::')]" mode="simplify">
        <!-- modify vs:: marker, see tm:: above -->
        <xsl:variable name="tmp1" select="replace(@href, 'vs::|:', '')"/>
        <xsl:variable name="tmp2" select="replace($tmp1, '/', '-')"/>
        <xsl:variable name="newhref" select="concat('/pages/valuesets/vs-', $tmp2)"/>
        <a href="{$newhref}" class="{@class}">
            <xsl:value-of select="text()"/>
        </a>
    </xsl:template>
    <xsl:template match="xhtml:a[starts-with(@href, 'cs::')]" mode="simplify">
        <!-- modify cs:: marker, see tm:: above -->
        <xsl:variable name="tmp1" select="replace(@href, 'cs::|:', '')"/>
        <xsl:variable name="tmp2" select="replace($tmp1, '/', '-')"/>
        <xsl:variable name="newhref" select="concat('/pages/codesystems/vs-', $tmp2)"/>
        <a href="{$newhref}" class="{@class}">
            <xsl:value-of select="text()"/>
        </a>
    </xsl:template>
    <xsl:template match="xhtml:a[starts-with(@href, 'cm::')]" mode="simplify">
        <!-- modify cm:: marker, see tm:: above -->
        <xsl:variable name="tmp1" select="replace(@href, 'vs::|:', '')"/>
        <xsl:variable name="tmp2" select="replace($tmp1, '/', '-')"/>
        <xsl:variable name="newhref" select="concat('/pages/conceptmaps/vs-', $tmp2)"/>
        <a href="{$newhref}" class="{@class}">
            <xsl:value-of select="text()"/>
        </a>
    </xsl:template>
    
    <!-- 
        hint text emitter
    -->
    <xsl:template name="nomanualedits">
        <xsl:text>&#10;</xsl:text>
        <xsl:comment> ****** CAUTION Manual changes on this page are ineffective: the page is automagically generated by a transformer from an ART-DECOR project by a bot (ADBot). ****** </xsl:comment>
    </xsl:template>
    <xsl:template name="nomanualeditstext">
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&lt;!-- ****** CAUTION Manual changes on this page are ineffective: the page is automagically generated by a transformer from an ART-DECOR project by a bot (ADBot). ****** --&gt;</xsl:text>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
    
    <!-- 
        config prototypes
    -->
    <xsl:template name="getConfigTsTemplate">
        <![CDATA[
import { _escapeHtml, defineConfig } from 'vitepress';

export default defineConfig({
        	/* title and description, exposed with i18n */
        	title: 'ART-DECOR® %%PUBLICATION%%',
        	description: 'ART-DECOR® %%PUBLICATION%%',
        	
        	head: [
        		[
        			'link',
        			{
        				rel: 'icon',
        				href: '/favicon.svg'
        			}
        		]
        	],
        	cleanUrls: true,
        	base: '/',
        	lastUpdated: true,
        
        	themeConfig: {
        
        		logo: {
        			light: '/topmenu-ad-logo2.png',
        			dark: '/topmenu-ad-logo2.png'
        		},
        
        		siteTitle: false,
        		editLink: false,
        		socialLinks: false,
        
        		footer: {
        			message: '',
        			copyright: '<i>NextGen</i> Publication Methodology Copyright © 2024-%%CURRENT%% <a href="https://art-decor-open-tools.net">ART-DECOR Open Tools (ADOT)</a> and <a href="https://docs.art-decor.org/adeg/">ART-DECOR Expert Group (ADEG)</a> – CC BY 4.0 Licensed'
        		},
        
        		docFooter: {
        			prev: false,
        			next: false,
        			 
        		},
        
        		search: {
        			provider: 'local'
        		},
        
        		outline: false,
        
        		/*
        			Navigation
        			has always:
        			- 'Frontpage' at /
        			- 'Implementation Guide' or 'Publication' at /pages/
        			- 'Legend' at /legend/
        			- a submenu with live project links such as 
        			  the development project at art-decor and the publication page
        			exposed with i18n
        		 */
        		nav: [
        			{
        				text: 'Frontpage',
        				link: '/'
        			},
        			{
        				text: 'Implementation Guide', /* 'Implementation Guide' or 'Publication' */
        				link: '/pages/'
        			},
        			{
        				text: 'Legend',
        				link: '/legend/'
        			},
        			{
        				text: 'Live Project',
        				items: [
        					{
        						text: 'Live Development Project at ART-DECOR',
        						link: '%%PROJECTURL%%'
        					},
        					{
        						text: 'Project Publications',
        						link: '%%PUBLOCATIONURL%%'
        					}
        				]
        			}
        		],
        
        		/*
        			side bar to the left when watching documents
        			For type 'Implementation Guide'
        			- Implementation Guide at /pages/
        			- all IG sub pages in their own hierarchy
        			- the Project Information page
        			- the Artifact submenu with datasets and scenarios,
        			  terminology (Value Sets, Codesystems, Concept Maps),
        			  and rules (Templates, Profiles, Questionnaires etc.)
        		*/
        		sidebar: [
        			{
        				text: 'Implementation Guide',
        				link: '/pages/',
        				collapsed: false,
        				%%SIDEBARPAGES%%
        			}
        		]
        	}
});]]>
    </xsl:template>
    
    <!--
        support
    -->
    <xsl:template name="doHeading">
        <xsl:param name="hlevel"/>
        <xsl:param name="heading"/>
        <xsl:param name="headprefix"/>
        <xsl:param name="headsuffix"/>
        <xsl:choose>
            <xsl:when test="$hlevel=1">
                <h1 class="ad-heading">
                    <xsl:copy-of select="$headprefix"/>
                    <xsl:value-of select="$heading"/>
                    <xsl:copy-of select="$headsuffix"/>
                </h1>
            </xsl:when>
            <xsl:when test="$hlevel=2">
                <h2 class="ad-heading">
                    <xsl:copy-of select="$headprefix"/>
                    <xsl:value-of select="$heading"/>
                    <xsl:copy-of select="$headsuffix"/>
                </h2>
            </xsl:when>
            <xsl:when test="$hlevel=3">
                <h3 class="ad-heading">
                    <xsl:copy-of select="$headprefix"/>
                    <xsl:value-of select="$heading"/>
                    <xsl:copy-of select="$headsuffix"/>
                </h3>
            </xsl:when>
            <xsl:when test="$hlevel=4">
                <h4 class="ad-heading">
                    <xsl:copy-of select="$headprefix"/>
                    <xsl:value-of select="$heading"/>
                    <xsl:copy-of select="$headsuffix"/>
                </h4>
            </xsl:when>
            <xsl:otherwise>
                <h5 class="ad-heading">
                    <xsl:copy-of select="$headprefix"/>
                    <xsl:value-of select="$heading"/>
                    <xsl:copy-of select="$headsuffix"/>
                </h5>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="doConfluenceIncludePageMacro">
        <xsl:param name="page"/>
        <ac:structured-macro ac:name="include" ac:schema-version="1" ac:macro-id="027055c0-e359-4e56-9382-30b4cec04a9e">
            <ac:parameter ac:name="">
                <ac:link><ri:page ri:content-title="{$page}" /></ac:link>
            </ac:parameter>
        </ac:structured-macro>
    </xsl:template>
    
    <xsl:template name="doWordpressIncludePageMacro">
        <xsl:param name="page"/>
        <p>
            <xsl:text>[insert page='</xsl:text>
            <xsl:value-of select="local:sluggy($page)"/>
            <xsl:text>' display='content']</xsl:text>
        </p>
    </xsl:template>
    
    <xsl:template name="doLinkItem">
        <xsl:param name="page"/>
        <xsl:param name="label"/>
        <xsl:choose>
            <xsl:when test="$adram='mediawiki'">
                <xsl:text>[[</xsl:text>
                <xsl:value-of select="$page"/>
                <xsl:text>|</xsl:text>
                <xsl:value-of select="$label"/>
                <xsl:text>]]</xsl:text>
            </xsl:when>
            <xsl:when test="$adram='confluence'">
                <ac:link>
                    <ri:page ri:content-title="{$page}"/>
                    <ac:plain-text-link-body>
                        <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
                        <xsl:value-of select="$label"/>    
                        <xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
                    </ac:plain-text-link-body>
                </ac:link>
            </xsl:when>
            <xsl:when test="$adram='wordpress'">
                <a href="{concat('/', local:sluggy($page))}">
                    <xsl:value-of select="$label"/>
                </a>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:function name="local:sluggy" as="xs:string">
        <xsl:param name="page"/>
        <xsl:value-of select="replace(lower-case($page), '[./]', '-')"/>
    </xsl:function>
    
    <xsl:template name="addConfluenceStyleItem">
        <xsl:param name="css"/>
        <ac:structured-macro ac:name="style" ac:schema-version="1" >
            <ac:parameter ac:name="import">
                <xsl:value-of select="$css"/>    
            </ac:parameter>
            <ac:parameter ac:name="media">text/css</ac:parameter>
        </ac:structured-macro>
    </xsl:template>
    
    <!-- strip trainiling blanks -->
    <!-- Identity transform: copy all nodes and attributes -->
    <xsl:template match="@* | node()" priority="-1" mode="skiptrailingblanks" >
        <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="skiptrailingblanks"/>
        </xsl:copy>
    </xsl:template>
    
    <!-- DO NOT touch whitespace in pre/code/textarea -->
    <xsl:template match="pre//text() | code//text() | textarea//text() | xhtml:pre//text() | xhtml:code//text() | xhtml:textarea//text()" priority="2" mode="skiptrailingblanks">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="td//text() | xhtml:td//text()" priority="2" mode="skiptrailingblanks">
        <xsl:value-of select="translate(., '&#xA;', ' ')"/>
    </xsl:template>
    
    <!-- Normalize leading blanks per line in all other text nodes -->
    <xsl:template match="text()" mode="skiptrailingblanks">
        <!-- remove spaces/tabs directly after start or newline -->
        <xsl:value-of select="replace(., '(^|\n)[ \t]+', '$1')"/>
    </xsl:template>
    
    <xsl:template name="doFrontmatterArtifact">
        <xsl:param name="title"/>
        <xsl:param name="name"/>
        <!-- frontmatter first -->
        <xsl:text>---&#10;</xsl:text>
        <xsl:text>title: </xsl:text>
        <xsl:call-template name="getMessage">
            <xsl:with-param name="key" select="$title"/>
        </xsl:call-template>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>titleTemplate: "</xsl:text>
        <xsl:value-of select="$name"/>
        <xsl:text>"&#10;</xsl:text>
        <xsl:text>layout: doc&#10;</xsl:text>
        <xsl:text>exportedAt: </xsl:text>
        <xsl:value-of select="current-dateTime()"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>---&#10;</xsl:text>
    </xsl:template>
    
</xsl:stylesheet>