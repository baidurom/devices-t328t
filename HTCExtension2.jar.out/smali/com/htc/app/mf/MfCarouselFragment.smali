.class public Lcom/htc/app/mf/MfCarouselFragment;
.super Lcom/htc/fragment/widget/CarouselFragment;
.source "MfCarouselFragment.java"

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
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/htc/app/mf/MfAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/mf/MfAgent;-><init>(Lcom/htc/app/mf/IMfFragment;)V

    iput-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    .line 33
    new-instance v0, Lcom/htc/app/mf/MfCarouselFragment$1;

    invoke-direct {v0, p0}, Lcom/htc/app/mf/MfCarouselFragment$1;-><init>(Lcom/htc/app/mf/MfCarouselFragment;)V

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/CarouselFragment;->setOnTabChangedListener(Lcom/htc/fragment/widget/CarouselHost$OnTabChangeListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public findViewById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "root"
    .parameter "id"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/mf/MfAgent;->findViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishFragmentInNextPane()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->finishFragmentInNextPane()V

    .line 218
    return-void
.end method

.method public finishSelf()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->finishSelf()V

    .line 210
    return-void
.end method

.method public getMainActivity()Lcom/htc/app/mf/MfMainActivity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getMainActivity()Lcom/htc/app/mf/MfMainActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->getMfFragmentInPane(I)Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/htc/app/mf/IMfFragment;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getParent()Lcom/htc/app/mf/IMfFragment;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->getPosition()I

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 376
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

    .line 377
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 368
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

    .line 369
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "sis"

    .prologue
    .line 244
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

    .line 245
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 246
    return-void
.end method

.method public onActivityDispatchKey(Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 414
    return-void
.end method

.method public onActivityKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 420
    return-void
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 426
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 254
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

    .line 255
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 256
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 263
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

    .line 264
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onAttach(Landroid/app/Activity;)V

    .line 265
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
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "sis"

    .prologue
    .line 273
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

    .line 274
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onCreate()V

    .line 275
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onCreate(Landroid/os/Bundle;)V

    .line 276
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 336
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

    .line 337
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/CarouselFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 338
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "sis"

    .prologue
    .line 280
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

    .line 281
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 285
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

    .line 286
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onDestroy()V

    .line 287
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 290
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

    .line 291
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onDestroyView()V

    .line 292
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 299
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

    .line 300
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onDetach()V

    .line 301
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onDetach()V

    .line 302
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
    .parameter "hidden"

    .prologue
    .line 305
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

    .line 306
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onHiddenChanged(Z)V

    .line 307
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter "activity"
    .parameter "attrs"
    .parameter "sis"

    .prologue
    .line 310
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

    .line 311
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/CarouselFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 312
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 429
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

    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public onNewArguments(Landroid/os/Bundle;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 225
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

    .line 226
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 346
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

    .line 347
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 315
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

    .line 316
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onPause()V

    .line 317
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 341
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

    .line 342
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 343
    return-void
.end method

.method public onReceiveMessage(Ljava/lang/Object;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 466
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 320
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

    .line 321
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0}, Lcom/htc/app/mf/MfAgent;->onResume()V

    .line 322
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onResume()V

    .line 323
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 326
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

    .line 327
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onStart()V

    .line 328
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 331
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

    .line 332
    invoke-super {p0}, Lcom/htc/fragment/widget/CarouselFragment;->onStop()V

    .line 333
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 438
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "callback"

    .prologue
    .line 384
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

    .line 385
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public registerOnKeyListener(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->registerOnKeyListener(Landroid/view/View;)V

    .line 400
    return-void
.end method

.method public registerOnTouchListener(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 407
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->registerOnTouchListener(Landroid/view/View;)V

    .line 408
    return-void
.end method

.method public sendMessageToNextPane(Ljava/lang/Object;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->sendMessageToNextPane(Ljava/lang/Object;)V

    .line 451
    return-void
.end method

.method public sendMessageToPreviousPane(Ljava/lang/Object;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/mf/MfAgent;->sendMessageToPreviousPane(Ljava/lang/Object;)V

    .line 459
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 0
    .parameter "has"

    .prologue
    .line 237
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
    .line 360
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

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
    .line 109
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 110
    return-void
.end method

.method public startFragmentInCurrentPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 140
    return-void
.end method

.method public startFragmentInCurrentPane(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 101
    return-void
.end method

.method public startFragmentInCurrentPane(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 125
    return-void
.end method

.method public startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/mf/MfAgent;->startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 206
    return-void
.end method

.method public startFragmentInCurrentPaneAndStackUp(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/app/mf/MfAgent;->startFragmentInCurrentPaneAndStackUp(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 196
    return-void
.end method

.method public startFragmentInNextPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 157
    return-void
.end method

.method public startFragmentInNextPane(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 187
    return-void
.end method

.method public startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 148
    return-void
.end method

.method public startFragmentInNextPane(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "reuseId"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/app/mf/MfCarouselFragment;->mAgent:Lcom/htc/app/mf/MfAgent;

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/app/mf/MfAgent;->startFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ZLjava/lang/String;)V

    .line 172
    return-void
.end method
