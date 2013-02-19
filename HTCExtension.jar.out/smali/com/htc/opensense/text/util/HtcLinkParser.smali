.class public Lcom/htc/opensense/text/util/HtcLinkParser;
.super Ljava/lang/Object;
.source "HtcLinkParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;
    }
.end annotation


# static fields
.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/htc/opensense/text/util/HtcLinkParser$1;

    invoke-direct {v0}, Lcom/htc/opensense/text/util/HtcLinkParser$1;-><init>()V

    sput-object v0, Lcom/htc/opensense/text/util/HtcLinkParser;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .parameter
    .parameter "s"
    .parameter "pattern"
    .parameter "schemes"
    .parameter "matchFilter"
    .parameter "transformFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 52
    .local v1, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 53
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 54
    .local v3, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 56
    .local v0, end:I
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    :cond_1
    new-instance v2, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;

    invoke-direct {v2}, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;-><init>()V

    .line 58
    .local v2, spec:Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Lcom/htc/opensense/text/util/HtcLinkParser;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, url:Ljava/lang/String;
    iput-object v4, v2, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->url:Ljava/lang/String;

    .line 61
    iput v3, v2, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->start:I

    .line 62
    iput v0, v2, Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;->end:I

    .line 64
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v0           #end:I
    .end local v2           #spec:Lcom/htc/opensense/text/util/HtcLinkParser$LinkSpec;
    .end local v3           #start:I
    .end local v4           #url:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "prefixes"
    .parameter "m"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 71
    if-eqz p3, :cond_0

    .line 72
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    :cond_0
    const/4 v7, 0x0

    .line 77
    .local v7, hasPrefix:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 78
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    const/4 v7, 0x1

    .line 82
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 91
    :cond_1
    if-nez v7, :cond_2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    :cond_2
    return-object p0

    .line 77
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method
