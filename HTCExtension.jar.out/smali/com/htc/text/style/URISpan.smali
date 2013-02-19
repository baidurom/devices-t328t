.class public Lcom/htc/text/style/URISpan;
.super Landroid/text/style/ClickableSpan;
.source "URISpan.java"


# instance fields
.field private mClickable:Z

.field private mUnderlined:Z

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0, v0}, Lcom/htc/text/style/URISpan;-><init>(Ljava/lang/String;ZZ)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "uri"
    .parameter "clickable"

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/text/style/URISpan;-><init>(Ljava/lang/String;ZZ)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "uri"
    .parameter "clickable"
    .parameter "underlined"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/htc/text/style/URISpan;->mUri:Ljava/lang/String;

    .line 28
    iput-boolean p2, p0, Lcom/htc/text/style/URISpan;->mClickable:Z

    .line 29
    iput-boolean p3, p0, Lcom/htc/text/style/URISpan;->mUnderlined:Z

    .line 30
    return-void
.end method

.method public static performClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .parameter "widget"
    .parameter "uri"

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v1           #e:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v1

    .line 66
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 67
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "widget"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/text/style/URISpan;->mClickable:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/htc/text/style/URISpan;->mUri:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/htc/text/style/URISpan;->performClick(Landroid/view/View;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 38
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 39
    iget-boolean v0, p0, Lcom/htc/text/style/URISpan;->mUnderlined:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 40
    return-void
.end method
