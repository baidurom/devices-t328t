.class Lcom/htc/app/mf/MfAgent;
.super Ljava/lang/Object;
.source "MfAgent.java"


# instance fields
.field private mFirstLevelId:I

.field private mHost:Lcom/htc/app/mf/IMfFragment;

.field private mMainActivity:Lcom/htc/app/mf/MfMainActivity;

.field private mUpdateMenuLater:Z


# direct methods
.method constructor <init>(Lcom/htc/app/mf/IMfFragment;)V
    .locals 1
    .parameter "host"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    .line 29
    iput-object v0, p0, Lcom/htc/app/mf/MfAgent;->mMainActivity:Lcom/htc/app/mf/MfMainActivity;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/mf/MfAgent;->mFirstLevelId:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/mf/MfAgent;->mUpdateMenuLater:Z

    .line 35
    iput-object p1, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    .line 36
    return-void
.end method


# virtual methods
.method public findViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "root"
    .parameter "id"

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    .line 143
    :cond_0
    if-eqz p1, :cond_1

    .line 144
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 153
    :goto_0
    return-object v1

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 149
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0, p2}, Lcom/htc/app/mf/MfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method finishFragmentInNextPane()V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 201
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->finishFragment(I)V

    goto :goto_0
.end method

.method finishSelf()V
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 194
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->finishFragment(I)V

    goto :goto_0
.end method

.method getFirstLevelId()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 119
    iget v2, p0, Lcom/htc/app/mf/MfAgent;->mFirstLevelId:I

    if-eq v2, v1, :cond_1

    .line 120
    iget v1, p0, Lcom/htc/app/mf/MfAgent;->mFirstLevelId:I

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 124
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->getFirstLevelId(Lcom/htc/app/mf/IMfFragment;)I

    move-result v1

    iput v1, p0, Lcom/htc/app/mf/MfAgent;->mFirstLevelId:I

    .line 131
    iget v1, p0, Lcom/htc/app/mf/MfAgent;->mFirstLevelId:I

    goto :goto_0
.end method

.method getMainActivity()Lcom/htc/app/mf/MfMainActivity;
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mMainActivity:Lcom/htc/app/mf/MfMainActivity;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mMainActivity:Lcom/htc/app/mf/MfMainActivity;

    .line 50
    :goto_0
    return-object v1

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 45
    .local v0, main:Landroid/app/Activity;
    instance-of v1, v0, Lcom/htc/app/mf/MfMainActivity;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lcom/htc/app/mf/MfMainActivity;

    .end local v0           #main:Landroid/app/Activity;
    iput-object v0, p0, Lcom/htc/app/mf/MfAgent;->mMainActivity:Lcom/htc/app/mf/MfMainActivity;

    .line 47
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mMainActivity:Lcom/htc/app/mf/MfMainActivity;

    goto :goto_0

    .line 50
    .restart local v0       #main:Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;
    .locals 2
    .parameter "position"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 113
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfMainActivity;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v1

    goto :goto_0
.end method

.method getParent()Lcom/htc/app/mf/IMfFragment;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 54
    iget-object v4, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    check-cast v4, Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_0

    move-object v0, v5

    .line 87
    :goto_0
    return-object v0

    .line 60
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 62
    .local v3, vp:Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/view/View;

    if-nez v4, :cond_2

    :cond_1
    move-object v0, v5

    .line 63
    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 67
    check-cast v2, Landroid/view/View;

    .line 69
    iget-object v4, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    check-cast v4, Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 72
    .local v1, manager:Landroid/app/FragmentManager;
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 74
    if-eqz v3, :cond_4

    instance-of v4, v3, Landroid/view/View;

    if-nez v4, :cond_5

    :cond_4
    move-object v0, v5

    .line 87
    goto :goto_0

    :cond_5
    move-object v2, v3

    .line 78
    check-cast v2, Landroid/view/View;

    .line 80
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 82
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_3

    instance-of v4, v0, Lcom/htc/app/mf/IMfFragment;

    if-eqz v4, :cond_3

    .line 83
    check-cast v0, Lcom/htc/app/mf/IMfFragment;

    goto :goto_0
.end method

.method getPosition()I
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 106
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 108
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getFirstLevelId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->getPositionById(I)I

    move-result v1

    goto :goto_0
.end method

.method onCreate()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/mf/MfAgent;->mUpdateMenuLater:Z

    .line 278
    return-void
.end method

.method onDetach()V
    .locals 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 250
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-nez v0, :cond_1

    .line 266
    :cond_0
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->isListeningOnActivityDispatchKey(Lcom/htc/app/mf/IMfFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is still listening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OnActivityDispatchKey()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->isListeningOnActivityKeyDown(Lcom/htc/app/mf/IMfFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is still listening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OnActivityKeyDown()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v0, v1}, Lcom/htc/app/mf/MfMainActivity;->isListeningOnActivityKeyUp(Lcom/htc/app/mf/IMfFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is still listening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OnActivityKeyUp()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method onResume()V
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 282
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-boolean v1, p0, Lcom/htc/app/mf/MfAgent;->mUpdateMenuLater:Z

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/htc/app/mf/MfMainActivity;->invalidateOptionsMenu()V

    .line 287
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/app/mf/MfAgent;->mUpdateMenuLater:Z

    goto :goto_0
.end method

.method onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "callback"

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 215
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 217
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfMainActivity;->superOnWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method registerOnKeyListener(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 221
    if-eqz p1, :cond_0

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 223
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 224
    iget-object v0, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 226
    :cond_0
    return-void
.end method

.method registerOnTouchListener(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 229
    if-eqz p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    :cond_0
    return-void
.end method

.method sendMessageToNextPane(Ljava/lang/Object;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 236
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/app/mf/MfMainActivity;->deliverMessage(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method sendMessageToPreviousPane(Ljava/lang/Object;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 243
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-nez v0, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/app/mf/MfMainActivity;->deliverMessage(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "callback"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 208
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 210
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    invoke-virtual {v0, v1, p1}, Lcom/htc/app/mf/MfMainActivity;->startActionMode(Lcom/htc/app/mf/IMfFragment;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "next"
    .parameter "reuseId"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 163
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getPosition()I

    move-result v4

    .line 167
    .local v4, position:I
    if-eqz p4, :cond_2

    .line 168
    add-int/lit8 v4, v4, 0x1

    .line 171
    :cond_2
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/app/mf/MfMainActivity;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/htc/app/mf/MfAgent;->mHost:Lcom/htc/app/mf/IMfFragment;

    check-cast v1, Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    .line 182
    .local v0, main:Lcom/htc/app/mf/MfMainActivity;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/htc/app/mf/MfAgent;->getPosition()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/htc/app/mf/MfMainActivity;->startFragmentAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0
.end method
