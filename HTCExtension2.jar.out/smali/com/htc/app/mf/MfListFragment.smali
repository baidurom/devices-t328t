.class public Lcom/htc/app/mf/MfListFragment;
.super Landroid/app/ListFragment;
.source "MfListFragment.java"

# interfaces
.implements Lcom/htc/app/mf/IMfFragment;


# instance fields
.field private mAgent:Lcom/htc/app/mf/MfAgent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 29
    new-instance v0, Lcom/htc/app/mf/MfAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/mf/MfAgent;-><init>(Lcom/htc/app/mf/IMfFragment;)V

    iput-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    return-void
.end method


# virtual methods
.method public findViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "root"
    .parameter "id"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/mf/MfAgent;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishFragmentInNextPane()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->finishFragmentInNextPane()V

    .line 202
    return-void
.end method

.method public finishSelf()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->finishSelf()V

    .line 194
    return-void
.end method

.method public getMainActivity()Lcom/htc/app/mf/MfMainActivity;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/htc/app/mf/IMfFragment;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getParent()Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getPosition()I

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 428
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

    .line 429
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 420
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

    .line 421
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "sis"

    .prologue
    .line 240
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

    .line 241
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 242
    return-void
.end method

.method public onActivityDispatchKey(Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 470
    return-void
.end method

.method public onActivityKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 476
    return-void
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 482
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 250
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

    .line 251
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 259
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

    .line 260
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 261
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConf"

    .prologue
    .line 268
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

    .line 269
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "sis"

    .prologue
    .line 277
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

    .line 278
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onCreate()V

    .line 279
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 280
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 380
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

    .line 381
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 382
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "sis"

    .prologue
    .line 288
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

    .line 289
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 297
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

    .line 298
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroy()V

    .line 299
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 306
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

    .line 307
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 308
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 315
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

    .line 316
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onDetach()V

    .line 317
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    .line 318
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .parameter "hidden"

    .prologue
    .line 325
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

    .line 326
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onHiddenChanged(Z)V

    .line 327
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter "activity"
    .parameter "attrs"
    .parameter "sis"

    .prologue
    .line 334
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

    .line 335
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 336
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 488
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

    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public onNewArguments(Landroid/os/Bundle;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 213
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

    .line 214
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 398
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

    .line 399
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 343
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

    .line 344
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 345
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 389
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

    .line 390
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 391
    return-void
.end method

.method public onReceiveMessage(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 525
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 352
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

    .line 353
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onResume()V

    .line 354
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 355
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 362
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

    .line 363
    invoke-super {p0}, Landroid/app/ListFragment;->onStart()V

    .line 364
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 371
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

    .line 372
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 373
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "callback"

    .prologue
    .line 436
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

    .line 437
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public registerOnKeyListener(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->registerOnKeyListener(Landroid/view/View;)V

    .line 456
    return-void
.end method

.method public registerOnTouchListener(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->registerOnTouchListener(Landroid/view/View;)V

    .line 464
    return-void
.end method

.method public sendMessageToNextPane(Ljava/lang/Object;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->sendMessageToNextPane(Ljava/lang/Object;)V

    .line 510
    return-void
.end method

.method public sendMessageToPreviousPane(Ljava/lang/Object;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->sendMessageToPreviousPane(Ljava/lang/Object;)V

    .line 518
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 0
    .parameter "has"

    .prologue
    .line 229
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

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
    .line 89
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 90
    return-void
.end method

.method public startFragmentInCurrentPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 120
    return-void
.end method

.method public startFragmentInCurrentPane(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 81
    return-void
.end method

.method public startFragmentInCurrentPane(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 105
    return-void
.end method

.method public startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfAgent;->startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 186
    return-void
.end method

.method public startFragmentInCurrentPaneAndStackUp(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/app/mf/MfAgent;->startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 176
    return-void
.end method

.method public startFragmentInNextPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 137
    return-void
.end method

.method public startFragmentInNextPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 167
    return-void
.end method

.method public startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 128
    return-void
.end method

.method public startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/htc/app/mf/MfListFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 152
    return-void
.end method
