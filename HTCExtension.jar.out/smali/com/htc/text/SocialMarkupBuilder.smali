.class public Lcom/htc/text/SocialMarkupBuilder;
.super Ljava/lang/Object;
.source "SocialMarkupBuilder.java"


# instance fields
.field private encodedStringBuilder:Ljava/lang/StringBuilder;

.field private isProfileTagAdded:Z

.field private trimmedStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/text/SocialMarkupBuilder;->isProfileTagAdded:Z

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->encodedStringBuilder:Ljava/lang/StringBuilder;

    .line 15
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->encodedStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<z>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->trimmedStringBuilder:Ljava/lang/StringBuilder;

    .line 17
    return-void
.end method


# virtual methods
.method public append(Lcom/htc/text/tag/ITag;)Lcom/htc/text/SocialMarkupBuilder;
    .locals 2
    .parameter "tag"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->encodedStringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/htc/text/tag/ITag;->toEncodedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->trimmedStringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/htc/text/tag/ITag;->toTrimmedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    instance-of v0, p1, Lcom/htc/text/tag/ProfileTag;

    if-eqz v0, :cond_1

    .line 23
    iget-boolean v0, p0, Lcom/htc/text/SocialMarkupBuilder;->isProfileTagAdded:Z

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->trimmedStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/text/SocialMarkupBuilder;->isProfileTagAdded:Z

    .line 28
    :cond_1
    return-object p0
.end method

.method public toEncodedString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->encodedStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "</z>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->encodedStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTrimmedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/text/SocialMarkupBuilder;->trimmedStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
