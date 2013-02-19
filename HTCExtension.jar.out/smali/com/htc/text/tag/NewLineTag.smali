.class public Lcom/htc/text/tag/NewLineTag;
.super Ljava/lang/Object;
.source "NewLineTag.java"

# interfaces
.implements Lcom/htc/text/tag/ITag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public toEncodedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "<br />"

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, ""

    return-object v0
.end method
