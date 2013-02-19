.class public Lcom/htc/text/tag/BlankTag;
.super Ljava/lang/Object;
.source "BlankTag.java"

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
    .line 17
    const-string v0, " "

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, ""

    return-object v0
.end method
