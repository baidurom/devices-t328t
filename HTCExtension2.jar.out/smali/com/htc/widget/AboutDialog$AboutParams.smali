.class public Lcom/htc/widget/AboutDialog$AboutParams;
.super Ljava/lang/Object;
.source "AboutDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/AboutDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AboutParams"
.end annotation


# instance fields
.field public appContent:Ljava/lang/CharSequence;

.field public appName:Ljava/lang/CharSequence;

.field public isLongContent:Z

.field mAppCompanyImage:Landroid/graphics/drawable/Drawable;

.field mAppCopyRight:Ljava/lang/CharSequence;

.field mAppCorp:Ljava/lang/CharSequence;

.field mAppDev:Ljava/lang/CharSequence;

.field mAppReserved:Ljava/lang/CharSequence;

.field public mAppVersion:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mHtcContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 278
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mContext:Landroid/content/Context;

    .line 281
    :try_start_0
    invoke-static {p1}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mHtcContext:Landroid/content/Context;

    .line 282
    invoke-direct {p0}, Lcom/htc/widget/AboutDialog$AboutParams;->loadDefaultParams()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "AboutDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get HtcResource context failed, default dialog params will not shown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/widget/AboutDialog$AboutParams;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/htc/widget/AboutDialog$AboutParams;->loadDefaultParams()V

    return-void
.end method

.method private loadDefaultParams()V
    .locals 3

    .prologue
    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20400c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mAppVersion:Ljava/lang/CharSequence;

    .line 349
    iget-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20400c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mAppDev:Ljava/lang/CharSequence;

    .line 350
    iget-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20801b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mAppCompanyImage:Landroid/graphics/drawable/Drawable;

    .line 351
    iget-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20400c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mAppCopyRight:Ljava/lang/CharSequence;

    .line 352
    iget-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20400c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mAppCorp:Ljava/lang/CharSequence;

    .line 353
    iget-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mHtcContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20400c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mAppReserved:Ljava/lang/CharSequence;

    .line 354
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/AboutDialog$AboutParams;->isLongContent:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "AboutDialog"

    const-string v2, "Use wrong context or there is no such resource. But we should not throw this exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHtcContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/widget/AboutDialog$AboutParams;->mHtcContext:Landroid/content/Context;

    return-object v0
.end method
