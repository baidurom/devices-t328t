.class public abstract Lcom/htc/app/FilePickerActivity$AbstractFilePickerCore;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFilePickerCore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkLandingPage()V
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public abstract doStart()V
.end method

.method public abstract doStop()V
.end method

.method public abstract initStringDescription()V
.end method

.method public abstract initialFilePicker(Landroid/content/Intent;)V
.end method

.method public abstract initialFilePicker(Landroid/os/Bundle;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onCreateDialog(I)Landroid/app/Dialog;
.end method

.method public abstract onCreateOptionsMenu(Landroid/view/Menu;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onMenuItemSelected(ILandroid/view/MenuItem;)V
.end method

.method public abstract onPreCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPrepareDialog()V
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)V
.end method
