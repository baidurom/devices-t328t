.class public Lcom/htc/app/ma/MaAgent;
.super Ljava/lang/Object;
.source "MaAgent.java"


# instance fields
.field private mHost:Lcom/htc/app/ma/IMaActivity;

.field private mHostPosition:I

.field private mId:Ljava/lang/String;

.field private mMainActivity:Lcom/htc/app/ma/MaMainActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/ma/IMaActivity;)V
    .locals 1
    .parameter "host"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    .line 24
    iput-object v0, p0, Lcom/htc/app/ma/MaAgent;->mMainActivity:Lcom/htc/app/ma/MaMainActivity;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/ma/MaAgent;->mId:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    .line 30
    return-void
.end method

.method private getCurrentMaChild()Lcom/htc/app/ma/IMaActivity;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    instance-of v1, v1, Landroid/app/ActivityGroup;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 316
    :goto_0
    return-object v0

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/ActivityGroup;

    invoke-virtual {v1}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 313
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/app/ma/IMaActivity;

    if-nez v1, :cond_2

    :cond_1
    move-object v0, v2

    .line 314
    goto :goto_0

    .line 316
    :cond_2
    check-cast v0, Lcom/htc/app/ma/IMaActivity;

    goto :goto_0
.end method


# virtual methods
.method dimBackground(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 237
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->dimBackground(I)V

    goto :goto_0
.end method

.method finishActivityById(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 167
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->finishChild(Ljava/lang/String;)V

    goto :goto_0
.end method

.method finishActivityInNextFrame()V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 182
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    iget v1, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInChildFrame(I)V

    goto :goto_0
.end method

.method finishActivityInSiblingFrame(II)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 175
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInChildFrame(II)V

    goto :goto_0
.end method

.method finishSelf()V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v0, Landroid/app/Activity;

    .line 145
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 147
    .local v1, parent:Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 163
    .end local v1           #parent:Landroid/app/Activity;
    :goto_0
    return-void

    .line 152
    .restart local v1       #parent:Landroid/app/Activity;
    :cond_0
    instance-of v2, v1, Lcom/htc/app/ma/IMaActivity;

    if-eqz v2, :cond_1

    .line 153
    check-cast v1, Lcom/htc/app/ma/IMaActivity;

    .end local v1           #parent:Landroid/app/Activity;
    invoke-interface {v1}, Lcom/htc/app/ma/IMaActivity;->finishSelf()V

    goto :goto_0

    .line 157
    .restart local v1       #parent:Landroid/app/Activity;
    :cond_1
    instance-of v2, v1, Lcom/htc/app/ma/MaMainActivity;

    if-eqz v2, :cond_2

    .line 158
    check-cast v1, Lcom/htc/app/ma/MaMainActivity;

    .end local v1           #parent:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/ma/MaMainActivity;->finishChild(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    .restart local v1       #parent:Landroid/app/Activity;
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/app/ma/MaAgent;->mId:Ljava/lang/String;

    return-object v0
.end method

.method getMainActivity()Lcom/htc/app/ma/MaMainActivity;
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mMainActivity:Lcom/htc/app/ma/MaMainActivity;

    if-eqz v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/htc/app/ma/MaAgent;->mMainActivity:Lcom/htc/app/ma/MaMainActivity;

    .line 60
    :goto_0
    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v0, Landroid/app/Activity;

    .line 58
    .local v0, a:Landroid/app/Activity;
    :goto_1
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/app/ma/MaMainActivity;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    .line 60
    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .end local v0           #a:Landroid/app/Activity;
    :goto_2
    iput-object v0, p0, Lcom/htc/app/ma/MaAgent;->mMainActivity:Lcom/htc/app/ma/MaMainActivity;

    goto :goto_0

    .restart local v0       #a:Landroid/app/Activity;
    :cond_2
    check-cast v0, Lcom/htc/app/ma/MaMainActivity;

    goto :goto_2
.end method

.method getPosition()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    return v0
.end method

.method maStartActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 132
    .local v0, a:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->startActivityForResultFromMaChild(Lcom/htc/app/ma/IMaActivity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 2

    .prologue
    .line 275
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, d:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 280
    :cond_0
    return-void
.end method

.method onBackPressed()V
    .locals 2

    .prologue
    .line 255
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 256
    .local v0, parent:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 257
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method onMaCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/htc/app/ma/MaAgent;->getCurrentMaChild()Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 212
    .local v0, child:Lcom/htc/app/ma/IMaActivity;
    if-nez v0, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 214
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/htc/app/ma/IMaActivity;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method onMaOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/htc/app/ma/MaAgent;->getCurrentMaChild()Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 226
    .local v0, child:Lcom/htc/app/ma/IMaActivity;
    if-nez v0, :cond_0

    .line 227
    const/4 v1, 0x0

    .line 228
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/htc/app/ma/IMaActivity;->onMaOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method onMaPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/htc/app/ma/MaAgent;->getCurrentMaChild()Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 219
    .local v0, child:Lcom/htc/app/ma/IMaActivity;
    if-nez v0, :cond_0

    .line 220
    const/4 v1, 0x0

    .line 221
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/htc/app/ma/IMaActivity;->onMaPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method onPrepareDialog(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 267
    .local v0, a:Lcom/htc/app/ma/MaMainActivity;
    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method removeDim()V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 244
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {v0}, Lcom/htc/app/ma/MaMainActivity;->removeDim()V

    goto :goto_0
.end method

.method sendIntentToMain(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 200
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->onMaReceiveIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method sendIntentToSibling(IILandroid/content/Intent;)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "intent"

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 194
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaMainActivity;->sendIntentToChild(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/app/ma/MaAgent;->mId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 37
    iput p1, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    .line 38
    return-void
.end method

.method startActivityInCurrentFrame(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;I)V

    .line 69
    return-void
.end method

.method startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V

    .line 73
    return-void
.end method

.method startActivityInNextFrameAndShift(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 110
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget v1, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/app/ma/MaMainActivity;->startActivityInNextChildFrameAndShift(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 119
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget v1, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/htc/app/ma/MaMainActivity;->startActivityInNextChildFrameAndShift(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0
.end method

.method startActivityInSiblingFrame(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "position"

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 77
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method startActivityInSiblingFrame(Landroid/content/Intent;II)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 93
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;II)V

    goto :goto_0
.end method

.method startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "id"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 102
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;IILjava/lang/String;)V

    goto :goto_0
.end method

.method startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 85
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0
.end method
