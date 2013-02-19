.class public Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;
.super Ljava/lang/Object;
.source "FilePickerAppDropDownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerAppDropDownAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListItem"
.end annotation


# instance fields
.field private enabled:Z

.field private layoutType:I

.field private mDataSourceType:I

.field private mIsCloudServiceItem:Z

.field private mIsSignIn:Z

.field private mainTextName:Ljava/lang/String;

.field private subTextName:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/app/FilePickerAppDropDownAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/app/FilePickerAppDropDownAdapter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 470
    iput-object p1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->this$0:Lcom/htc/app/FilePickerAppDropDownAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput v1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->mDataSourceType:I

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->enabled:Z

    .line 450
    iput v1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->layoutType:I

    .line 451
    iput-boolean v1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->mIsSignIn:Z

    .line 452
    iput-boolean v1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->mIsCloudServiceItem:Z

    .line 471
    return-void
.end method

.method private setLayoutType(I)V
    .locals 0
    .parameter "layoutType"

    .prologue
    .line 506
    iput p1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->layoutType:I

    .line 507
    return-void
.end method


# virtual methods
.method public getDataSourceType()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->mDataSourceType:I

    return v0
.end method

.method public getLayoutType()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->layoutType:I

    return v0
.end method

.method public getMainTextName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->mainTextName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTextName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->subTextName:Ljava/lang/String;

    return-object v0
.end method

.method public isCloudServiceItem()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->mIsCloudServiceItem:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 510
    iget-boolean v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->enabled:Z

    return v0
.end method

.method public isSignIn()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->mIsSignIn:Z

    return v0
.end method

.method public setDataSourceType(I)V
    .locals 0
    .parameter "dataSourceType"

    .prologue
    .line 498
    iput p1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->mDataSourceType:I

    .line 499
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 514
    iput-boolean p1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->enabled:Z

    .line 515
    return-void
.end method

.method public setIsCloudServiceItem(Z)V
    .locals 0
    .parameter "isCloudServiceItem"

    .prologue
    .line 459
    iput-boolean p1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->mIsCloudServiceItem:Z

    .line 460
    return-void
.end method

.method public setMainTextName(Ljava/lang/String;)V
    .locals 0
    .parameter "mainTextName"

    .prologue
    .line 478
    iput-object p1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->mainTextName:Ljava/lang/String;

    .line 479
    return-void
.end method

.method public setSignIn(Z)V
    .locals 0
    .parameter "isSignIn"

    .prologue
    .line 467
    iput-boolean p1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->mIsSignIn:Z

    .line 468
    return-void
.end method

.method public setSubTextName(Ljava/lang/String;)V
    .locals 1
    .parameter "subTextName"

    .prologue
    .line 486
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setLayoutType(I)V

    .line 490
    :goto_0
    iput-object p1, p0, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->subTextName:Ljava/lang/String;

    .line 491
    return-void

    .line 489
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/app/FilePickerAppDropDownAdapter$AppListItem;->setLayoutType(I)V

    goto :goto_0
.end method
