.class public Lcom/htc/app/ma/MaActivity;
.super Landroid/app/Activity;
.source "MaActivity.java"

# interfaces
.implements Lcom/htc/app/ma/IMaActivity;


# instance fields
.field private final mAgent:Lcom/htc/app/ma/MaAgent;

.field private final mStateAgent:Lcom/htc/app/ma/MaStateAgent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    new-instance v0, Lcom/htc/app/ma/MaAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaAgent;-><init>(Lcom/htc/app/ma/IMaActivity;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    .line 21
    new-instance v0, Lcom/htc/app/ma/MaStateAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaStateAgent;-><init>(Lcom/htc/app/ma/IMaStateOwner;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    return-void
.end method


# virtual methods
.method public dimBackground(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->dimBackground(I)V

    .line 277
    return-void
.end method

.method public finishActivityById(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->finishActivityById(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public finishActivityInNextFrame()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->finishActivityInNextFrame()V

    .line 193
    return-void
.end method

.method public finishActivityInSiblingFrame(II)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->finishActivityInSiblingFrame(II)V

    .line 186
    return-void
.end method

.method public finishSelf()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->finishSelf()V

    .line 171
    return-void
.end method

.method public getCustomizedPadding(Z)[I
    .locals 1
    .parameter "isPortrait"

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainActivity()Lcom/htc/app/ma/MaMainActivity;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMenuOwnerId()I
    .locals 1

    .prologue
    .line 254
    const/4 v0, -0x1

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getPosition()I

    move-result v0

    return v0
.end method

.method public getState(I)I
    .locals 1
    .parameter "key"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaStateAgent;->getState(I)I

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/htc/app/ma/MaActivity;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 342
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public maStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->maStartActivityForResult(Landroid/content/Intent;I)V

    .line 157
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 318
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->onAttachedToWindow()V

    .line 319
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->onBackPressed()V

    .line 298
    return-void
.end method

.method public onMaActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/app/ma/MaActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    return-void
.end method

.method public onMaCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMaOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMaPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMaReceiveIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 218
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p2}, Lcom/htc/app/ma/MaAgent;->onPrepareDialog(Landroid/app/Dialog;)V

    .line 309
    return-void
.end method

.method public onStateChanged(III)V
    .locals 1
    .parameter "key"
    .parameter "newValue"
    .parameter "oldValue"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaStateAgent;->onStateChanged(III)V

    .line 71
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "cb"

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/htc/app/ma/MaActivity;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 328
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 331
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method public removeDim()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->removeDim()V

    .line 284
    return-void
.end method

.method public sendIntentToMain(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->sendIntentToMain(Landroid/content/Intent;)V

    .line 212
    return-void
.end method

.method public sendIntentToSibling(IILandroid/content/Intent;)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "intent"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->sendIntentToSibling(IILandroid/content/Intent;)V

    .line 205
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->setId(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->setPosition(I)V

    .line 32
    return-void
.end method

.method public setState(II)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaStateAgent;->setState(II)V

    .line 78
    return-void
.end method

.method public startActivityInCurrentFrame(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->startActivityInCurrentFrame(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

.method public startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public startActivityInNextFrameAndShift(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->startActivityInNextFrameAndShift(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "position"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;I)V

    .line 106
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;II)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;II)V

    .line 123
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "id"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V

    .line 132
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/app/ma/MaActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V

    .line 114
    return-void
.end method
