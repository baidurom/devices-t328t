.class public Lcom/htc/text/SocialMarkupSplitter;
.super Ljava/lang/Object;
.source "SocialMarkupSplitter.java"


# static fields
.field private static tagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDepth:I

.field private mFirstPart:Ljava/lang/StringBuilder;

.field private mFirstTagIsDone:Z

.field private mIsInTag:Z

.field private mOtherPart:Ljava/lang/StringBuilder;

.field private mParser:Lorg/xmlpull/v1/XmlPullParser;

.field private mSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    .line 33
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/EmoticonTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emo"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/EmphasisTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/ImageTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "img"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/NewLineTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/PlurkQualifierTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "plq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/PrimaryAutoLinkTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ak1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/PrimaryLinkTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lk1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/PrimaryTextTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/ProfileTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/SecondaryLinkTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lk2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/SecondaryTextTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "t2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/TimestampTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    const-class v1, Lcom/htc/text/tag/VideoTag;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mDepth:I

    .line 58
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method

.method private addEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "parser"
    .parameter "builder"

    .prologue
    .line 157
    const-string v0, "</"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    return-void
.end method

.method private addStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "parser"
    .parameter "builder"

    .prologue
    .line 145
    const-string v2, "<"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 147
    .local v0, account:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 148
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 149
    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1           #i:I
    :cond_0
    const-string v2, ">"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    return-void
.end method

.method private static escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"
    .parameter "pattern"
    .parameter "replace"

    .prologue
    .line 161
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 162
    .local v1, result:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 163
    .local v2, startIndex:I
    const/4 v0, 0x0

    .line 165
    .local v0, endIndex:I
    :goto_0
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 166
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v2, v0, v3

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private handleEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 3
    .parameter "parser"
    .parameter "tagId"

    .prologue
    .line 117
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, curId:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mFirstTagIsDone:Z

    if-nez v1, :cond_1

    .line 119
    iget v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mDepth:I

    .line 120
    iget-boolean v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mIsInTag:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mDepth:I

    if-nez v1, :cond_0

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mIsInTag:Z

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mFirstTagIsDone:Z

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/htc/text/SocialMarkupSplitter;->mFirstPart:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2}, Lcom/htc/text/SocialMarkupSplitter;->addEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;)V

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-boolean v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mIsInTag:Z

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/htc/text/SocialMarkupSplitter;->mFirstPart:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2}, Lcom/htc/text/SocialMarkupSplitter;->addEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/htc/text/SocialMarkupSplitter;->mOtherPart:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2}, Lcom/htc/text/SocialMarkupSplitter;->addEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method private handleStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 3
    .parameter "parser"
    .parameter "tagId"

    .prologue
    .line 102
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, curId:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mFirstTagIsDone:Z

    if-nez v1, :cond_1

    .line 104
    iget-boolean v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mIsInTag:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mDepth:I

    if-nez v1, :cond_0

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mIsInTag:Z

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/htc/text/SocialMarkupSplitter;->mFirstPart:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2}, Lcom/htc/text/SocialMarkupSplitter;->addStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;)V

    .line 108
    iget v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mDepth:I

    .line 114
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-boolean v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mIsInTag:Z

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/htc/text/SocialMarkupSplitter;->mFirstPart:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2}, Lcom/htc/text/SocialMarkupSplitter;->addStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/htc/text/SocialMarkupSplitter;->mOtherPart:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2}, Lcom/htc/text/SocialMarkupSplitter;->addStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method private handleText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 6
    .parameter "parser"
    .parameter "tagId"

    .prologue
    .line 133
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, content:Ljava/lang/String;
    const-string v4, "&"

    const-string v5, "&amp;"

    invoke-static {v0, v4, v5}, Lcom/htc/text/SocialMarkupSplitter;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, escapedAmpersandContent:Ljava/lang/String;
    const-string v4, "<"

    const-string v5, "&lt;"

    invoke-static {v1, v4, v5}, Lcom/htc/text/SocialMarkupSplitter;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, escapedLessThanContent:Ljava/lang/String;
    const-string v4, ">"

    const-string v5, "&gt;"

    invoke-static {v3, v4, v5}, Lcom/htc/text/SocialMarkupSplitter;->escapeXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, escapedGreaterThanContent:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/htc/text/SocialMarkupSplitter;->mIsInTag:Z

    if-eqz v4, :cond_0

    .line 138
    iget-object v4, p0, Lcom/htc/text/SocialMarkupSplitter;->mFirstPart:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v4, p0, Lcom/htc/text/SocialMarkupSplitter;->mOtherPart:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public getFirstTagFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "className"

    .prologue
    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mFirstPart:Ljava/lang/StringBuilder;

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mOtherPart:Ljava/lang/StringBuilder;

    .line 71
    sget-object v3, Lcom/htc/text/SocialMarkupSplitter;->tagMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 72
    .local v2, tagId:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mFirstPart:Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mOtherPart:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/htc/text/SocialMarkupSplitter;->mSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mFirstPart:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 77
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    new-instance v4, Ljava/io/StringReader;

    iget-object v5, p0, Lcom/htc/text/SocialMarkupSplitter;->mSource:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 78
    iget-object v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 79
    .local v1, eventType:I
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mDepth:I

    .line 80
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mIsInTag:Z

    .line 81
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mFirstTagIsDone:Z

    .line 82
    :goto_1
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 83
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 84
    iget-object v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v3, v2}, Lcom/htc/text/SocialMarkupSplitter;->handleStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 90
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_1

    .line 85
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 86
    iget-object v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v3, v2}, Lcom/htc/text/SocialMarkupSplitter;->handleEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 92
    .end local v1           #eventType:I
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #eventType:I
    :cond_4
    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 88
    :try_start_1
    iget-object v3, p0, Lcom/htc/text/SocialMarkupSplitter;->mParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {p0, v3, v2}, Lcom/htc/text/SocialMarkupSplitter;->handleText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 94
    .end local v1           #eventType:I
    :catch_1
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getRemainingContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/text/SocialMarkupSplitter;->mOtherPart:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/htc/text/SocialMarkupSplitter;->mSource:Ljava/lang/String;

    .line 66
    return-void
.end method
