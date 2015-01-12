<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" version="2.0"><xsl:output method="html"/><xsl:template match="ab"><p class="ab1"><xsl:apply-templates/></p></xsl:template><xsl:template match="abbr"><xsl:choose><xsl:when test="parent::choice and count(parent::*/*) gt 1"/><xsl:otherwise><span class="abbr2"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="actor"><span class="actor1"><xsl:apply-templates/></span></xsl:template><xsl:template match="add"><span class="add1"><xsl:apply-templates/></span></xsl:template><xsl:template match="address"><div class="address1"><xsl:apply-templates/></div></xsl:template><xsl:template match="addrLine"><div class="addrLine1"><xsl:apply-templates/></div></xsl:template><xsl:template match="addSpan"><xsl:variable name="cId"><xsl:value-of select="generate-id(.)"/></xsl:variable><sup><xsl:element name="a"><xsl:attribute name="class">addSpan1</xsl:attribute><xsl:attribute name="name">A<xsl:value-of select="$cId"/></xsl:attribute><xsl:attribute name="href">#N<xsl:value-of select="$cId"/></xsl:attribute><xsl:number level="any"/></xsl:element></sup></xsl:template><xsl:template match="am"><span class="am1"><xsl:apply-templates/></span></xsl:template><xsl:template match="anchor"><xsl:variable name="cId"><xsl:value-of select="generate-id(.)"/></xsl:variable><sup><xsl:element name="a"><xsl:attribute name="class">anchor1</xsl:attribute><xsl:attribute name="name">A<xsl:value-of select="$cId"/></xsl:attribute><xsl:attribute name="href">#N<xsl:value-of select="$cId"/></xsl:attribute><xsl:number level="any"/></xsl:element></sup></xsl:template><xsl:template match="argument"><div class="argument1"><xsl:apply-templates/></div></xsl:template><xsl:template match="author"><span class="author1"><xsl:apply-templates/></span></xsl:template><xsl:template match="back"><div class="back1"><xsl:apply-templates/></div></xsl:template><xsl:template match="bibl"><span class="bibl1"><xsl:apply-templates/></span></xsl:template><xsl:template match="body"><div class="body"><xsl:apply-templates/></div></xsl:template><xsl:template match="byline"><div class="byline1"><xsl:apply-templates/></div></xsl:template><xsl:template match="c"><span class="c1"><xsl:apply-templates/></span></xsl:template><xsl:template match="castGroup"><xsl:choose><xsl:when test="child::*"><span class="castGroup1"><xsl:apply-templates/></span></xsl:when><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="castItem"><li class="castItem1"><xsl:apply-templates/></li></xsl:template><xsl:template match="castList"><xsl:choose><xsl:when test="child::*"><span class="castList1"><xsl:apply-templates/></span></xsl:when><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="cb"><div class="cb"><xsl:apply-templates/></div></xsl:template><xsl:template match="cell"><div class="cell"><xsl:apply-templates/></div></xsl:template><xsl:template match="choice"><xsl:choose><xsl:when test="sic and corr"><span class="choice1"><xsl:apply-templates select="corr[1]"/></span></xsl:when><xsl:when test="abbr and expan"><span class="choice2"><xsl:apply-templates select="expan[1]"/></span></xsl:when><xsl:when test="orig and reg"><span class="choice3"><xsl:apply-templates select="reg[1]"/></span></xsl:when><xsl:when test="sic and corr"><span class="choice4"><xsl:apply-templates select="corr[1]"/></span></xsl:when><xsl:when test="abbr and expan"><span class="choice5"><xsl:apply-templates select="expan[1]"/></span></xsl:when><xsl:when test="orig and reg"><span class="choice6"><xsl:apply-templates select="reg[1]"/></span></xsl:when><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="cit"><xsl:choose><xsl:when test="child::quote and child::bibl"><div class="cit"><xsl:apply-templates/></div></xsl:when><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="closer"><xsl:choose><xsl:when test="child::*"><div class="closer1"><xsl:apply-templates/></div></xsl:when><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="corr"><xsl:choose><xsl:when test="parent::choice and count(parent::*/*) gt 1"/><xsl:otherwise><span class="corr2"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="date"><xsl:choose><xsl:when test="text()"><span class="date1"><xsl:apply-templates/></span></xsl:when><xsl:when test="@when and not(text())"><span class="date2"><xsl:apply-templates select="@when"/></span></xsl:when><xsl:when test="@when"><span class="date3"><xsl:apply-templates/></span></xsl:when><xsl:when test="text()"><span class="date4"><xsl:apply-templates/></span></xsl:when><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="dateline"><div class="dateline1"><xsl:apply-templates/></div></xsl:template><xsl:template match="del"><span class="del1"><xsl:apply-templates/></span></xsl:template><xsl:template match="desc"><span class="desc1"><xsl:apply-templates/></span></xsl:template><xsl:template match="div"><div class="div"><xsl:apply-templates/></div></xsl:template><xsl:template match="docAuthor"><xsl:choose><xsl:when test="ancestor::teiHeader"/><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="docDate"><xsl:choose><xsl:when test="ancestor::teiHeader"/><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="docEdition"><xsl:choose><xsl:when test="ancestor::teiHeader"/><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="docImprint"><xsl:choose><xsl:when test="ancestor::teiHeader"/><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="docTitle"><xsl:choose><xsl:when test="ancestor::teiHeader"/><xsl:when test="not(ancestor::teiHeader)"><div class="docTitle2"><xsl:apply-templates/></div></xsl:when><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="epigraph"><div class="epigraph1"><xsl:apply-templates/></div></xsl:template><xsl:template match="ex"><span class="ex1"><xsl:apply-templates/></span></xsl:template><xsl:template match="expan"><xsl:choose><xsl:when test="parent::choice and count(parent::*/*) gt 1"/><xsl:otherwise><span class="expan2"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="figDesc"><span class="figDesc1"><xsl:apply-templates/></span></xsl:template><xsl:template match="figure"><xsl:choose><xsl:when test="head or @rendition='simple:display'"><div class="figure1"><xsl:apply-templates/></div></xsl:when><xsl:otherwise><span class="figure2"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="floatingText"><div class="floatingText1"><xsl:apply-templates/></div></xsl:template><xsl:template match="foreign"><span class="foreign1"><xsl:apply-templates/></span></xsl:template><xsl:template match="formula"><xsl:choose><xsl:when test="@rendition='simple:display'"><div class="formula1"><xsl:apply-templates/></div></xsl:when><xsl:otherwise><span class="formula2"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="front"><div class="front1"><xsl:apply-templates/></div></xsl:template><xsl:template match="fw"><xsl:choose><xsl:when test="ancestor::p or ancestor::ab"><span class="fw1"><xsl:apply-templates/></span></xsl:when><xsl:otherwise><div class="fw2"><xsl:apply-templates/></div></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="g"><xsl:choose><xsl:when test="not(text())"><div class="g"><xsl:apply-templates/></div></xsl:when><xsl:otherwise><span class="g2"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="gap"><span class="gap1"><xsl:apply-templates/></span></xsl:template><xsl:template match="graphic"><div class="graphic"><xsl:apply-templates/></div></xsl:template><xsl:template match="group"><div class="group1"><xsl:apply-templates/></div></xsl:template><xsl:template match="handShift"><span class="handShift1"><xsl:apply-templates/></span></xsl:template><xsl:template match="head"><xsl:choose><xsl:when test="parent::div/parent::body and parent::div[not(@type)]"><h1 class="head1"><xsl:apply-templates/></h1></xsl:when><xsl:when test="parent::div[@type]"><h1 class="head2"><xsl:apply-templates/></h1></xsl:when><xsl:when test="parent::figure"><h1 class="head3"><xsl:apply-templates/></h1></xsl:when><xsl:when test="parent::table"><h1 class="head4"><xsl:apply-templates/></h1></xsl:when><xsl:when test="parent::lg"><h1 class="head5"><xsl:apply-templates/></h1></xsl:when><xsl:when test="parent::list"><h1 class="head6"><xsl:apply-templates/></h1></xsl:when><xsl:otherwise><h1 class="head7"><xsl:apply-templates/></h1></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="hi"><xsl:choose><xsl:when test="@rendition"><span class="hi1"><xsl:apply-templates/></span></xsl:when><xsl:when test="not(@rendition)"><span class="hi2"><xsl:apply-templates/></span></xsl:when><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="imprimatur"><div class="imprimatur1"><xsl:apply-templates/></div></xsl:template><xsl:template match="item"><xsl:choose><xsl:when test="parent::list[@rendition]"><li class="item1"><xsl:apply-templates/></li></xsl:when><xsl:when test="not(parent::list[@rendition])"><li class="item2"><xsl:apply-templates/></li></xsl:when><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="l"><div class="l1"><xsl:apply-templates/></div></xsl:template><xsl:template match="label"><span class="label1"><xsl:apply-templates/></span></xsl:template><xsl:template match="lb"><div class="lb"><xsl:apply-templates/></div></xsl:template><xsl:template match="lg"><span class="lg1"><xsl:apply-templates/></span></xsl:template><xsl:template match="list"><xsl:choose><xsl:when test="@rendition"><span class="list1"><xsl:apply-templates/></span></xsl:when><xsl:when test="not(@rendition)"><span class="list2"><xsl:apply-templates/></span></xsl:when><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="listBibl"><span class="listBibl1"><xsl:apply-templates/></span></xsl:template><xsl:template match="measure"><span class="measure1"><xsl:apply-templates/></span></xsl:template><xsl:template match="milestone"><span class="milestone1"><xsl:apply-templates/></span></xsl:template><xsl:template match="name"><span class="name1"><xsl:apply-templates/></span></xsl:template><xsl:template match="note"><xsl:choose><xsl:when test="@place"><span class="note1"><xsl:apply-templates/></span></xsl:when><xsl:when test="parent::div and not(@place)"><div class="note2"><xsl:apply-templates/></div></xsl:when><xsl:when test="not(@place)"><span class="note3"><xsl:apply-templates/></span></xsl:when><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="num"><span class="num1"><xsl:apply-templates/></span></xsl:template><xsl:template match="opener"><div class="opener1"><xsl:apply-templates/></div></xsl:template><xsl:template match="orig"><xsl:choose><xsl:when test="parent::choice and count(parent::*/*) gt 1"/><xsl:otherwise><span class="orig2"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="p"><p class="p1"><xsl:apply-templates/></p></xsl:template><xsl:template match="pb"><span class="pb1"><xsl:apply-templates select="@n"/></span></xsl:template><xsl:template match="pc"><span class="pc1"><xsl:apply-templates/></span></xsl:template><xsl:template match="postscript"><div class="postscript1"><xsl:apply-templates/></div></xsl:template><xsl:template match="publisher"><xsl:choose><xsl:when test="ancestor::teiHeader"/><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="pubPlace"><xsl:choose><xsl:when test="ancestor::teiHeader"/><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="q"><span class="q1"><xsl:apply-templates/></span></xsl:template><xsl:template match="quote"><xsl:choose><xsl:when test="ancestor::p"><span class="quote1"><xsl:apply-templates/></span></xsl:when><xsl:when test="not(ancestor::p)"><div class="quote2"><xsl:apply-templates/></div></xsl:when><xsl:otherwise><xsl:apply-templates/></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="ref"><xsl:choose><xsl:when test="not(@target)"><span class="ref1"><xsl:apply-templates/></span></xsl:when><xsl:when test="not(text())"><div class="ref"><xsl:apply-templates/></div></xsl:when><xsl:otherwise><div class="ref"><xsl:apply-templates/></div></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="reg"><xsl:choose><xsl:when test="not(parent::choice)"><span class="reg1"><xsl:apply-templates/></span></xsl:when><xsl:when test="parent::choice and count(parent::*/*) gt 1"/><xsl:otherwise><span class="reg3"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="rhyme"><span class="rhyme1"><xsl:apply-templates/></span></xsl:template><xsl:template match="role"><div class="role1"><xsl:apply-templates/></div></xsl:template><xsl:template match="roleDesc"><div class="roleDesc1"><xsl:apply-templates/></div></xsl:template><xsl:template match="row"><div class="row"><xsl:apply-templates/></div></xsl:template><xsl:template match="rs"><span class="rs1"><xsl:apply-templates/></span></xsl:template><xsl:template match="s"><span class="s1"><xsl:apply-templates/></span></xsl:template><xsl:template match="salute"><div class="salute1"><xsl:apply-templates/></div></xsl:template><xsl:template match="seg"><span class="seg1"><xsl:apply-templates/></span></xsl:template><xsl:template match="sic"><span class="sicXYZ"><xsl:apply-templates/></span></xsl:template><xsl:template match="signed"><xsl:choose><xsl:when test="parent::choice and count(parent::*/*) gt 1"/><xsl:otherwise><span class="signed2"><xsl:apply-templates/></span></xsl:otherwise></xsl:choose></xsl:template><xsl:template match="sp"><div class="sp1"><xsl:apply-templates/></div></xsl:template><xsl:template match="space"><span class="space1"><xsl:apply-templates/></span></xsl:template><xsl:template match="speaker"><div class="speaker1"><xsl:apply-templates/></div></xsl:template><xsl:template match="spGrp"><div class="spGrp1"><xsl:apply-templates/></div></xsl:template><xsl:template match="stage"><span class="stage1"><xsl:apply-templates/></span></xsl:template><xsl:template match="subst"><span class="subst1"><xsl:apply-templates/></span></xsl:template><xsl:template match="supplied"><span class="supplied1"><xsl:apply-templates/></span></xsl:template><xsl:template match="table"><div class="table1"><xsl:apply-templates/></div></xsl:template><xsl:template match="teiHeader"/><xsl:template match="text"><div class="text1"><xsl:apply-templates/></div></xsl:template><xsl:template match="time"><span class="time1"><xsl:apply-templates/></span></xsl:template><xsl:template match="title"><span class="title1"><xsl:apply-templates/></span></xsl:template><xsl:template match="titlePage"><div class="titlePage1"><xsl:apply-templates/></div></xsl:template><xsl:template match="titlePart"><div class="titlePart1"><xsl:apply-templates/></div></xsl:template><xsl:template match="trailer"><div class="trailer1"><xsl:apply-templates/></div></xsl:template><xsl:template match="unclear"><span class="unclear1"><xsl:apply-templates/></span></xsl:template><xsl:template match="w"><span class="w1"><xsl:apply-templates/></span></xsl:template><xsl:template match="/"><html><head><meta charset="UTF-8"/><title>
                    TEI-Simple: transform to html generated from odd file.
                </title><link rel="StyleSheet" href="simple.css" type="text/css"/><style>span.add1 {color: green; text-decoration: underline;}
div.address1 {margin-top: 2em; margin-left: 2em; margin-right: 2em; margin-bottom:
            2em;}
div.addrLine1 {white-space: nowrap;}
div.argument1 {margin-bottom: 0.5em;}
ol.castList1 {list-style: ordered;}
div.closer1 {margin-top: 1em; margin-left: 1em; margin-left: 1em;}
span.del1 {   text-decoration: line-through;}
div.docTitle2 {font-size: large;}
div.floatingText1 {
	  margin: 6pt;
	  border: solid black 1pt;
	}
span.foreign1 {font-style:italic;}
div.front1 {border: 1px solid red;}
span.hi1 {font-style: italic;}
span.hi2 {font-style: italic;}
div.l1 { margin-left: 1em; }
ol.list2 {list-style: disc;}
div.note2 {margin-left: 10px;margin-right: 10px; font-size:smaller;}
span.note3::before {content:" [";}
span.note3::after {content:"] ";}
span.note3 {font-size:small;}
span.pb1 {
	  display: block;
	  color: grey;
	  float: right;
	}
span.sic1 {font-weight: normal;}
div.sic2 {font-size: small;}
div.speaker1 { font-style:italic; }
div.text1 {max-width: 80%; margin: auto;}
span.title1 {color: red; font-size: 2em;}
div.trailer1 {color: green;}
</style></head><body><xsl:apply-templates/></body></html></xsl:template><xsl:template match="*"><xsl:apply-templates/></xsl:template></xsl:stylesheet>