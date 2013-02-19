.class public Lcom/htc/app/mf/MfCarouselInternalFragment;
.super Lcom/htc/fragment/widget/CarouselInternalFragment;
.source "MfCarouselInternalFragment.java"

# interfaces
.implements Lcom/htc/app/mf/IMfFragment;


# instance fields
.field private mAgent:Lcom/htc/app/mf/MfAgent;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "authority"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselInternalFragment;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/htc/app/mf/MfAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/mf/MfAgent;-><init>(Lcom/htc/app/mf/IMfFragment;)V

    iput-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    .line 33
    new-instance v0, Lcom/htc/app/mf/MfCarouselInternalFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/app/mf/MfCarouselInternalFragment$1;-><init>(Lcom/htc/app/mf/MfCarouselInternalFragment;)V

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public findViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "root"
    .parameter "id"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/mf/MfAgent;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishFragmentInNextPane()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->finishFragmentInNextPane()V

    .line 226
    return-void
.end method

.method public finishSelf()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->finishSelf()V

    .line 218
    return-void
.end method

.method public getMainActivity()Lcom/htc/app/mf/MfMainActivity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/htc/app/mf/IMfFragment;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getParent()Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getPosition()I

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 416
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

    .line 417
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 408
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

    .line 409
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "sis"

    .prologue
    .line 260
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

    .line 261
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 262
    return-void
.end method

.method public onActivityDispatchKey(Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 458
    return-void
.end method

.method public onActivityKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 464
    return-void
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 470
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 270
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

    .line 271
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 272
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 275
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

    .line 276
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onAttach(Landroid/app/Activity;)V

    .line 277
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConf"

    .prologue
    .line 280
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

    .line 281
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 282
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "sis"

    .prologue
    .line 285
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

    .line 286
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onCreate()V

    .line 287
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onCreate(Landroid/os/Bundle;)V

    .line 288
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 368
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

    .line 369
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 370
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "sis"

    .prologue
    .line 292
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

    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

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
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onDestroy()V

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
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onDestroyView()V

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
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onDetach()V

    .line 317
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onDetach()V

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
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onHiddenChanged(Z)V

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
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 336
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 476
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

    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public onNewArguments(Landroid/os/Bundle;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 237
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

    .line 238
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 386
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

    .line 387
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 339
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

    .line 340
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onPause()V

    .line 341
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 377
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

    .line 378
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 379
    return-void
.end method

.method public onReceiveMessage(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 513
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 344
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

    .line 345
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onResume()V

    .line 346
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onResume()V

    .line 347
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 354
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

    .line 355
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onStart()V

    .line 356
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 359
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

    .line 360
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselInternalFragment;->onStop()V

    .line 361
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "callback"

    .prologue
    .line 424
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

    .line 425
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public registerOnKeyListener(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->registerOnKeyListener(Landroid/view/View;)V

    .line 444
    return-void
.end method

.method public registerOnTouchListener(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->registerOnTouchListener(Landroid/view/View;)V

    .line 452
    return-void
.end method

.method public sendMessageToNextPane(Ljava/lang/Object;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->sendMessageToNextPane(Ljava/lang/Object;)V

    .line 498
    return-void
.end method

.method public sendMessageToPreviousPane(Ljava/lang/Object;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->sendMessageToPreviousPane(Ljava/lang/Object;)V

    .line 506
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 0
    .parameter "has"

    .prologue
    .line 253
    return-void
.end method

.method public setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 51
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "callback"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

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
    .line 113
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 114
    return-void
.end method

.method public startFragmentInCurrentPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 144
    return-void
.end method

.method public startFragmentInCurrentPane(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 105
    return-void
.end method

.method public startFragmentInCurrentPane(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 129
    return-void
.end method

.method public startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfAgent;->startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 210
    return-void
.end method

.method public startFragmentInCurrentPaneAndStackUp(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/app/mf/MfAgent;->startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method public startFragmentInNextPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 161
    return-void
.end method

.method public startFragmentInNextPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 191
    return-void
.end method

.method public startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 152
    return-void
.end method

.method public startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselInternalFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 176
    return-void
.end method
