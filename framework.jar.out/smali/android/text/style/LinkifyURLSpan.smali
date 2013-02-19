.class public Landroid/text/style/LinkifyURLSpan;
.super Landroid/text/style/URLSpan;
.source "LinkifyURLSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final Debug_URL:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mUnderLineLink:Z


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "src"

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    .line 42
    iput-boolean v2, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    .line 43
    const-string/jumbo v1, "prime"

    iput-object v1, p0, Landroid/text/style/LinkifyURLSpan;->TAG:Ljava/lang/String;

    .line 58
    new-array v0, v2, [Z

    .line 59
    .local v0, booleanArr:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 60
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    .line 43
    const-string/jumbo v0, "prime"

    iput-object v0, p0, Landroid/text/style/LinkifyURLSpan;->TAG:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "prime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LinkifyURLSpan] url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "xxx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4
    .parameter "url"
    .parameter "underLineLink"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    .line 43
    const-string/jumbo v0, "prime"

    iput-object v0, p0, Landroid/text/style/LinkifyURLSpan;->TAG:Ljava/lang/String;

    .line 52
    iput-boolean p2, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    .line 53
    const-string/jumbo v0, "prime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LinkifyURLSpan] url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "xxx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x17

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "widget"

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/text/style/LinkifyURLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 94
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.browser.application_id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v4, "com.htc.HtcLinkifyDispatcher"

    const-string v5, "com.htc.HtcLinkifyDispatcher.HtcLinkifyDispatcherActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string/jumbo v4, "prime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LinkifyURLSpan] onClick. url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "xxx"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " timestamp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 85
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 86
    iget-boolean v0, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 87
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/text/style/LinkifyURLSpan;->mUnderLineLink:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 77
    return-void
.end method
