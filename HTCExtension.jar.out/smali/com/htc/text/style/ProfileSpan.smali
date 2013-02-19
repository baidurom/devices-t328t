.class public Lcom/htc/text/style/ProfileSpan;
.super Landroid/text/style/ClickableSpan;
.source "ProfileSpan.java"


# instance fields
.field private mBold:Z

.field private mClickable:Z

.field private mColor:I

.field private mName:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .parameter "uri"
    .parameter "name"
    .parameter "color"
    .parameter "bold"
    .parameter "clickable"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/htc/text/style/ProfileSpan;->mUri:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/htc/text/style/ProfileSpan;->mName:Ljava/lang/String;

    .line 24
    iput p3, p0, Lcom/htc/text/style/ProfileSpan;->mColor:I

    .line 25
    iput-boolean p4, p0, Lcom/htc/text/style/ProfileSpan;->mBold:Z

    .line 26
    iput-boolean p5, p0, Lcom/htc/text/style/ProfileSpan;->mClickable:Z

    .line 27
    return-void
.end method

.method public static performClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "widget"
    .parameter "uri"
    .parameter "name"

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 68
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v1           #e:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v1

    .line 72
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 73
    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "widget"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/htc/text/style/ProfileSpan;->mClickable:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/htc/text/style/ProfileSpan;->mUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/text/style/ProfileSpan;->mName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/htc/text/style/ProfileSpan;->performClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 36
    iget v0, p0, Lcom/htc/text/style/ProfileSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 37
    iget-boolean v0, p0, Lcom/htc/text/style/ProfileSpan;->mBold:Z

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 40
    :cond_0
    return-void
.end method
