.class public Lcom/htc/app/mf/MfHtcListFragment;
.super Lcom/htc/fragment/app/HtcListFragment;
.source "MfHtcListFragment.java"

# interfaces
.implements Lcom/htc/app/mf/IMfFragment;


# instance fields
.field private mAgent:Lcom/htc/app/mf/MfAgent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/htc/fragment/app/HtcListFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/htc/app/mf/MfAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/mf/MfAgent;-><init>(Lcom/htc/app/mf/IMfFragment;)V

    iput-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    return-void
.end method


# virtual methods
.method public findViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "root"
    .parameter "id"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/mf/MfAgent;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishFragmentInNextPane()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->finishFragmentInNextPane()V

    .line 179
    return-void
.end method

.method public finishSelf()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->finishSelf()V

    .line 171
    return-void
.end method

.method public getMainActivity()Lcom/htc/app/mf/MfMainActivity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/htc/app/mf/IMfFragment;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getParent()Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getPosition()I

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 341
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

    .line 342
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 333
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

    .line 334
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "sis"

    .prologue
    .line 213
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

    .line 214
    invoke-super {p0, p1}, Lcom/htc/fragment/app/HtcListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 215
    return-void
.end method

.method public onActivityDispatchKey(Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 379
    return-void
.end method

.method public onActivityKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 385
    return-void
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 391
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 219
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

    .line 220
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/app/HtcListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 221
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 224
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

    .line 225
    invoke-super {p0, p1}, Lcom/htc/fragment/app/HtcListFragment;->onAttach(Landroid/app/Activity;)V

    .line 226
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConf"

    .prologue
    .line 229
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

    .line 230
    invoke-super {p0, p1}, Lcom/htc/fragment/app/HtcListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 231
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "sis"

    .prologue
    .line 234
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

    .line 235
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onCreate()V

    .line 236
    invoke-super {p0, p1}, Lcom/htc/fragment/app/HtcListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 237
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 301
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

    .line 302
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/app/HtcListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 303
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "sis"

    .prologue
    .line 241
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

    .line 242
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/app/HtcListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 246
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

    .line 247
    invoke-super {p0}, Lcom/htc/fragment/app/HtcListFragment;->onDestroy()V

    .line 248
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 251
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

    .line 252
    invoke-super {p0}, Lcom/htc/fragment/app/HtcListFragment;->onDestroyView()V

    .line 253
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 256
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

    .line 257
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onDetach()V

    .line 258
    invoke-super {p0}, Lcom/htc/fragment/app/HtcListFragment;->onDetach()V

    .line 259
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .parameter "hidden"

    .prologue
    .line 262
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

    .line 263
    invoke-super {p0, p1}, Lcom/htc/fragment/app/HtcListFragment;->onHiddenChanged(Z)V

    .line 264
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter "activity"
    .parameter "attrs"
    .parameter "sis"

    .prologue
    .line 271
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

    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/app/HtcListFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 273
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 397
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

    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public onNewArguments(Landroid/os/Bundle;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 190
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

    .line 191
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 311
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

    .line 312
    invoke-super {p0, p1}, Lcom/htc/fragment/app/HtcListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 276
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

    .line 277
    invoke-super {p0}, Lcom/htc/fragment/app/HtcListFragment;->onPause()V

    .line 278
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 306
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

    .line 307
    invoke-super {p0, p1}, Lcom/htc/fragment/app/HtcListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 308
    return-void
.end method

.method public onReceiveMessage(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 430
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 281
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

    .line 282
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onResume()V

    .line 283
    invoke-super {p0}, Lcom/htc/fragment/app/HtcListFragment;->onResume()V

    .line 284
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 287
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

    .line 288
    invoke-super {p0}, Lcom/htc/fragment/app/HtcListFragment;->onStart()V

    .line 289
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 296
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

    .line 297
    invoke-super {p0}, Lcom/htc/fragment/app/HtcListFragment;->onStop()V

    .line 298
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "callback"

    .prologue
    .line 349
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

    .line 350
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public registerOnKeyListener(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->registerOnKeyListener(Landroid/view/View;)V

    .line 365
    return-void
.end method

.method public registerOnTouchListener(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->registerOnTouchListener(Landroid/view/View;)V

    .line 373
    return-void
.end method

.method public sendMessageToNextPane(Ljava/lang/Object;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->sendMessageToNextPane(Ljava/lang/Object;)V

    .line 419
    return-void
.end method

.method public sendMessageToPreviousPane(Ljava/lang/Object;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->sendMessageToPreviousPane(Ljava/lang/Object;)V

    .line 427
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 0
    .parameter "has"

    .prologue
    .line 206
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

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
    .line 78
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 79
    return-void
.end method

.method public startFragmentInCurrentPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 109
    return-void
.end method

.method public startFragmentInCurrentPane(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 70
    return-void
.end method

.method public startFragmentInCurrentPane(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 94
    return-void
.end method

.method public startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfAgent;->startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method public startFragmentInCurrentPaneAndStackUp(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/app/mf/MfAgent;->startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 157
    return-void
.end method

.method public startFragmentInNextPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 118
    return-void
.end method

.method public startFragmentInNextPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 148
    return-void
.end method

.method public startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 113
    return-void
.end method

.method public startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/app/mf/MfHtcListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 133
    return-void
.end method
