.class public Lcom/htc/app/ma/MaTabSwitchActivity;
.super Lcom/htc/widget/TabSwitchActivity;
.source "MaTabSwitchActivity.java"

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
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchActivity;-><init>()V

    .line 22
    new-instance v0, Lcom/htc/app/ma/MaAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaAgent;-><init>(Lcom/htc/app/ma/IMaActivity;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    .line 23
    new-instance v0, Lcom/htc/app/ma/MaStateAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaStateAgent;-><init>(Lcom/htc/app/ma/IMaStateOwner;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    return-void
.end method


# virtual methods
.method public dimBackground(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->dimBackground(I)V

    .line 287
    return-void
.end method

.method public finishActivityById(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->finishActivityById(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public finishActivityInNextFrame()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->finishActivityInNextFrame()V

    .line 203
    return-void
.end method

.method public finishActivityInSiblingFrame(II)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->finishActivityInSiblingFrame(II)V

    .line 196
    return-void
.end method

.method public finishSelf()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->finishSelf()V

    .line 181
    return-void
.end method

.method public getCustomizedPadding(Z)[I
    .locals 1
    .parameter "isPortrait"

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainActivity()Lcom/htc/app/ma/MaMainActivity;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMenuOwnerId()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, -0x1

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getPosition()I

    move-result v0

    return v0
.end method

.method public getState(I)I
    .locals 1
    .parameter "key"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaStateAgent;->getState(I)I

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/htc/app/ma/MaTabSwitchActivity;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 352
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-super {p0}, Lcom/htc/widget/TabSwitchActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public maStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->maStartActivityForResult(Landroid/content/Intent;I)V

    .line 163
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Lcom/htc/widget/TabSwitchActivity;->onAttachedToWindow()V

    .line 328
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->onAttachedToWindow()V

    .line 329
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->onBackPressed()V

    .line 308
    return-void
.end method

.method public onMaActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 169
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/app/ma/MaTabSwitchActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 170
    return-void
.end method

.method public onMaCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMaOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMaPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMaReceiveIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 228
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p2}, Lcom/htc/app/ma/MaAgent;->onPrepareDialog(Landroid/app/Dialog;)V

    .line 319
    return-void
.end method

.method public onStateChanged(III)V
    .locals 1
    .parameter "key"
    .parameter "newValue"
    .parameter "oldValue"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaStateAgent;->onStateChanged(III)V

    .line 73
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "cb"

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/htc/app/ma/MaTabSwitchActivity;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 338
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 341
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/TabSwitchActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method public removeDim()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->removeDim()V

    .line 294
    return-void
.end method

.method public sendIntentToMain(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->sendIntentToMain(Landroid/content/Intent;)V

    .line 222
    return-void
.end method

.method public sendIntentToSibling(IILandroid/content/Intent;)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "intent"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->sendIntentToSibling(IILandroid/content/Intent;)V

    .line 215
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->setId(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->setPosition(I)V

    .line 34
    return-void
.end method

.method public setState(II)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaStateAgent;->setState(II)V

    .line 80
    return-void
.end method

.method public startActivityInCurrentFrame(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->startActivityInCurrentFrame(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public startActivityInNextFrameAndShift(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->startActivityInNextFrameAndShift(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method public startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "position"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;I)V

    .line 112
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;II)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;II)V

    .line 129
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "id"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V

    .line 138
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/app/ma/MaTabSwitchActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V

    .line 120
    return-void
.end method
