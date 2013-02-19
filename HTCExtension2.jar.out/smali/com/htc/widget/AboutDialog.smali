.class public Lcom/htc/widget/AboutDialog;
.super Landroid/app/Dialog;
.source "AboutDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/AboutDialog$AboutParams;,
        Lcom/htc/widget/AboutDialog$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AboutDialog"


# instance fields
.field private mApp:Landroid/widget/TextView;

.field private mBodyBlock:Landroid/widget/ScrollView;

.field private mCopyRight:Landroid/widget/TextView;

.field private mCorp:Landroid/widget/TextView;

.field private mDescription:Landroid/widget/TextView;

.field private mDev:Landroid/widget/TextView;

.field private mHeadBlock:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/widget/ImageView;

.field private mParams:Lcom/htc/widget/AboutDialog$AboutParams;

.field private mReserved:Landroid/widget/TextView;

.field private mVer:Landroid/widget/TextView;

.field private mWindow:Landroid/view/Window;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/htc/widget/AboutDialog$AboutParams;)V
    .locals 2
    .parameter "context"
    .parameter "params"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    .line 55
    invoke-virtual {p0}, Lcom/htc/widget/AboutDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    .line 56
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void
.end method

.method private installContent()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Lcom/htc/widget/AboutDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x2090009

    invoke-static {v1, v2}, Lcom/htc/res/HtcResources;->inflateLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 79
    invoke-direct {p0}, Lcom/htc/widget/AboutDialog;->setupView()V

    .line 80
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method private setupView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x202003a

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mHeadBlock:Landroid/widget/LinearLayout;

    .line 89
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x202003e

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mBodyBlock:Landroid/widget/ScrollView;

    .line 92
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x202003b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mApp:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x202003c

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mDev:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x202003d

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mVer:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x2020041

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mCopyRight:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x2020042

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mCorp:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x2020043

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mReserved:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x202003f

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mDescription:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const v1, 0x2020040

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/AboutDialog;->mLogo:Landroid/widget/ImageView;

    .line 102
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mApp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mDev:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->mAppDev:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mVer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->mAppVersion:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mCopyRight:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->mAppCopyRight:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mCorp:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->mAppCorp:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mReserved:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->mAppReserved:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->appContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    iget-object v1, v1, Lcom/htc/widget/AboutDialog$AboutParams;->mAppCompanyImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mBodyBlock:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mHeadBlock:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    invoke-virtual {v1}, Lcom/htc/widget/AboutDialog$AboutParams;->getHtcContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20e001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->scrollBy(II)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mBodyBlock:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mParams:Lcom/htc/widget/AboutDialog$AboutParams;

    #calls: Lcom/htc/widget/AboutDialog$AboutParams;->loadDefaultParams()V
    invoke-static {v0}, Lcom/htc/widget/AboutDialog$AboutParams;->access$000(Lcom/htc/widget/AboutDialog$AboutParams;)V

    .line 129
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lcom/htc/widget/AboutDialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 70
    invoke-direct {p0}, Lcom/htc/widget/AboutDialog;->installContent()V

    .line 71
    return-void
.end method

.method public updateUI()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/htc/widget/AboutDialog;->installContent()V

    .line 379
    return-void
.end method
