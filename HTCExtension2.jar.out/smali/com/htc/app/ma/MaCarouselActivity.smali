.class public Lcom/htc/app/ma/MaCarouselActivity;
.super Lcom/htc/widget/CarouselActivity;
.source "MaCarouselActivity.java"

# interfaces
.implements Lcom/htc/app/ma/IMaActivity;


# instance fields
.field private final mAgent:Lcom/htc/app/ma/MaAgent;

.field private final mStateAgent:Lcom/htc/app/ma/MaStateAgent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/htc/app/ma/MaAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaAgent;-><init>(Lcom/htc/app/ma/IMaActivity;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    .line 26
    new-instance v0, Lcom/htc/app/ma/MaStateAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaStateAgent;-><init>(Lcom/htc/app/ma/IMaStateOwner;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    .line 20
    return-void
.end method


# virtual methods
.method public dimBackground(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->dimBackground(I)V

    .line 290
    return-void
.end method

.method public finishActivityById(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->finishActivityById(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public finishActivityInNextFrame()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->finishActivityInNextFrame()V

    .line 206
    return-void
.end method

.method public finishActivityInSiblingFrame(II)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->finishActivityInSiblingFrame(II)V

    .line 199
    return-void
.end method

.method public finishSelf()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->finishSelf()V

    .line 184
    return-void
.end method

.method public getCustomizedPadding(Z)[I
    .locals 1
    .parameter "isPortrait"

    .prologue
    .line 278
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainActivity()Lcom/htc/app/ma/MaMainActivity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMenuOwnerId()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, -0x1

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getPosition()I

    move-result v0

    return v0
.end method

.method public getState(I)I
    .locals 1
    .parameter "key"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaStateAgent;->getState(I)I

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/htc/app/ma/MaCarouselActivity;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 355
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public maStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->maStartActivityForResult(Landroid/content/Intent;I)V

    .line 166
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onAttachedToWindow()V

    .line 331
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->onAttachedToWindow()V

    .line 332
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->onBackPressed()V

    .line 311
    return-void
.end method

.method public onMaActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/app/ma/MaCarouselActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 173
    return-void
.end method

.method public onMaCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMaOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMaPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMaReceiveIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 231
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p2}, Lcom/htc/app/ma/MaAgent;->onPrepareDialog(Landroid/app/Dialog;)V

    .line 322
    return-void
.end method

.method public onStateChanged(III)V
    .locals 1
    .parameter "key"
    .parameter "newValue"
    .parameter "oldValue"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaStateAgent;->onStateChanged(III)V

    .line 76
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "cb"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/htc/app/ma/MaCarouselActivity;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 341
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 344
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method public removeDim()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->removeDim()V

    .line 297
    return-void
.end method

.method public sendIntentToMain(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->sendIntentToMain(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method public sendIntentToSibling(IILandroid/content/Intent;)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "intent"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->sendIntentToSibling(IILandroid/content/Intent;)V

    .line 218
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->setId(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->setPosition(I)V

    .line 37
    return-void
.end method

.method public setState(II)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaStateAgent;->setState(II)V

    .line 83
    return-void
.end method

.method public startActivityInCurrentFrame(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->startActivityInCurrentFrame(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public startActivityInNextFrameAndShift(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->startActivityInNextFrameAndShift(Landroid/content/Intent;)V

    .line 148
    return-void
.end method

.method public startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "position"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;I)V

    .line 115
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;II)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;II)V

    .line 132
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "id"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V

    .line 141
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/htc/app/ma/MaCarouselActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V

    .line 123
    return-void
.end method
