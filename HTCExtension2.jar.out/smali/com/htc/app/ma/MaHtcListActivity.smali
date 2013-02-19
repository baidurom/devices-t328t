.class public Lcom/htc/app/ma/MaHtcListActivity;
.super Lcom/htc/app/HtcListActivity;
.source "MaHtcListActivity.java"

# interfaces
.implements Lcom/htc/app/ma/IMaActivity;


# instance fields
.field private final mAgent:Lcom/htc/app/ma/MaAgent;

.field private final mStateAgent:Lcom/htc/app/ma/MaStateAgent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 21
    new-instance v0, Lcom/htc/app/ma/MaAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaAgent;-><init>(Lcom/htc/app/ma/IMaActivity;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    .line 22
    new-instance v0, Lcom/htc/app/ma/MaStateAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaStateAgent;-><init>(Lcom/htc/app/ma/IMaStateOwner;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    return-void
.end method


# virtual methods
.method public dimBackground(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->dimBackground(I)V

    .line 286
    return-void
.end method

.method public finishActivityById(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->finishActivityById(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public finishActivityInNextFrame()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->finishActivityInNextFrame()V

    .line 202
    return-void
.end method

.method public finishActivityInSiblingFrame(II)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->finishActivityInSiblingFrame(II)V

    .line 195
    return-void
.end method

.method public finishSelf()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->finishSelf()V

    .line 180
    return-void
.end method

.method public getCustomizedPadding(Z)[I
    .locals 1
    .parameter "isPortrait"

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainActivity()Lcom/htc/app/ma/MaMainActivity;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMenuOwnerId()I
    .locals 1

    .prologue
    .line 263
    const/4 v0, -0x1

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getPosition()I

    move-result v0

    return v0
.end method

.method public getState(I)I
    .locals 1
    .parameter "key"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaStateAgent;->getState(I)I

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/htc/app/ma/MaHtcListActivity;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 351
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public maStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->maStartActivityForResult(Landroid/content/Intent;I)V

    .line 162
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onAttachedToWindow()V

    .line 327
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->onAttachedToWindow()V

    .line 328
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->onBackPressed()V

    .line 307
    return-void
.end method

.method public onMaActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/app/ma/MaHtcListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    return-void
.end method

.method public onMaCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMaOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMaPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMaReceiveIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 227
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p2}, Lcom/htc/app/ma/MaAgent;->onPrepareDialog(Landroid/app/Dialog;)V

    .line 318
    return-void
.end method

.method public onStateChanged(III)V
    .locals 1
    .parameter "key"
    .parameter "newValue"
    .parameter "oldValue"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaStateAgent;->onStateChanged(III)V

    .line 72
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "cb"

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/htc/app/ma/MaHtcListActivity;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 337
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 340
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method public removeDim()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->removeDim()V

    .line 293
    return-void
.end method

.method public sendIntentToMain(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->sendIntentToMain(Landroid/content/Intent;)V

    .line 221
    return-void
.end method

.method public sendIntentToSibling(IILandroid/content/Intent;)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "intent"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->sendIntentToSibling(IILandroid/content/Intent;)V

    .line 214
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->setId(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->setPosition(I)V

    .line 33
    return-void
.end method

.method public setState(II)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaStateAgent;->setState(II)V

    .line 79
    return-void
.end method

.method public startActivityInCurrentFrame(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->startActivityInCurrentFrame(Landroid/content/Intent;)V

    .line 97
    return-void
.end method

.method public startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public startActivityInNextFrameAndShift(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->startActivityInNextFrameAndShift(Landroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "position"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;I)V

    .line 111
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;II)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;II)V

    .line 128
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "id"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V

    .line 137
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V

    .line 119
    return-void
.end method
