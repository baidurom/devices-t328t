.class public Lcom/htc/app/mf/MfFragment;
.super Landroid/app/Fragment;
.source "MfFragment.java"

# interfaces
.implements Lcom/htc/app/mf/IMfFragment;


# instance fields
.field private mAgent:Lcom/htc/app/mf/MfAgent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 29
    new-instance v0, Lcom/htc/app/mf/MfAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/mf/MfAgent;-><init>(Lcom/htc/app/mf/IMfFragment;)V

    iput-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    return-void
.end method


# virtual methods
.method public findViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "root"
    .parameter "id"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/mf/MfAgent;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishFragmentInNextPane()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->finishFragmentInNextPane()V

    .line 162
    return-void
.end method

.method public finishSelf()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->finishSelf()V

    .line 154
    return-void
.end method

.method public getMainActivity()Lcom/htc/app/mf/MfMainActivity;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/htc/app/mf/IMfFragment;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getParent()Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getPosition()I

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onActionModeFinished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onActionModeStarted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "sis"

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onActivityCreated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 189
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 190
    return-void
.end method

.method public onActivityDispatchKey(Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 334
    return-void
.end method

.method public onActivityKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 340
    return-void
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 346
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onActivityResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 195
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 196
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onAttach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 200
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 201
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConf"

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onConfigurationChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 205
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "sis"

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onCreate()V

    .line 211
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onCreateOptionsMenu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 273
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 274
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "sis"

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onCreateView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 222
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 223
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onDestroyView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 227
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 228
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onDetach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onDetach()V

    .line 233
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 234
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .parameter "hidden"

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onHiddenChanged, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 238
    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    .line 239
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter "activity"
    .parameter "attrs"
    .parameter "sis"

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onInflate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 248
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public onNewArguments(Landroid/os/Bundle;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onNewArguments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onOptionsItemSelected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 283
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 252
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 253
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onPrepareOptionsMenu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 278
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 279
    return-void
.end method

.method public onReceiveMessage(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 374
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onResume()V

    .line 258
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 259
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 263
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 264
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 268
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 269
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "callback"

    .prologue
    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onWindowStartingActionMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/app/mf/MfLog;->v(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public registerOnKeyListener(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->registerOnKeyListener(Landroid/view/View;)V

    .line 324
    return-void
.end method

.method public registerOnTouchListener(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->registerOnTouchListener(Landroid/view/View;)V

    .line 328
    return-void
.end method

.method public sendMessageToNextPane(Ljava/lang/Object;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->sendMessageToNextPane(Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method public sendMessageToPreviousPane(Ljava/lang/Object;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->sendMessageToPreviousPane(Ljava/lang/Object;)V

    .line 371
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 0
    .parameter "has"

    .prologue
    .line 181
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startFragmentInCurrentPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 66
    return-void
.end method

.method public startFragmentInCurrentPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 96
    return-void
.end method

.method public startFragmentInCurrentPane(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 61
    return-void
.end method

.method public startFragmentInCurrentPane(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 81
    return-void
.end method

.method public startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfAgent;->startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public startFragmentInCurrentPaneAndStackUp(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/app/mf/MfAgent;->startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 140
    return-void
.end method

.method public startFragmentInNextPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 105
    return-void
.end method

.method public startFragmentInNextPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 131
    return-void
.end method

.method public startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 100
    return-void
.end method

.method public startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/app/mf/MfFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 116
    return-void
.end method
