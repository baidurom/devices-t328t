.class public Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;
.super Ljava/lang/Object;
.source "PenMenuStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/core/PenMenuStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockConditions"
.end annotation


# static fields
.field public static final KEY_FORCE_HIDE_STROKE:Ljava/lang/String; = "key_force_off"

.field public static final KEY_IME_SHOW:Ljava/lang/String; = "key_ime_show"

.field public static final KEY_MENU_OPEN:Ljava/lang/String; = "key_option_menu_open"

.field public static final KEY_OVERLAY_UI:Ljava/lang/String; = "key_overlay_ui"

.field public static final KEY_TEMP_HIDE:Ljava/lang/String; = "key_option_tempHide"


# instance fields
.field private mConditions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 398
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->mConditions:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->isBlocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->unBlockInPersistentBlockConditions()V

    return-void
.end method

.method private isBlocked()Z
    .locals 5

    .prologue
    .line 436
    const/4 v3, 0x0

    .line 437
    .local v3, isBlocked:Z
    iget-object v4, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->mConditions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 438
    .local v1, conditions:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;

    .line 439
    .local v0, block:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->isBlocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 440
    const/4 v3, 0x1

    .line 444
    .end local v0           #block:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;
    :cond_1
    return v3
.end method

.method private unBlockInPersistentBlockConditions()V
    .locals 3

    .prologue
    .line 491
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->mConditions:Ljava/util/Map;

    const-string v2, "key_option_tempHide"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;

    .line 492
    .local v0, count:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;
    if-eqz v0, :cond_0

    .line 493
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->unblock(Z)Z

    .line 496
    :cond_0
    return-void
.end method


# virtual methods
.method public block(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 461
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->mConditions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;

    .line 463
    .local v0, count:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;
    if-nez v0, :cond_0

    .line 464
    new-instance v0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;

    .end local v0           #count:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;
    invoke-direct {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;-><init>()V

    .line 465
    .restart local v0       #count:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;
    iget-object v1, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->mConditions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_0
    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->block()V

    .line 469
    return-void
.end method

.method public isBlocked(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, ret:Z
    iget-object v2, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->mConditions:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;

    .line 450
    .local v0, count:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;
    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->isBlocked()Z

    move-result v1

    .line 453
    :cond_0
    return v1
.end method

.method public unblock(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 476
    const/4 v2, 0x1

    .line 477
    .local v2, unblocked:Z
    iget-object v3, p0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockConditions;->mConditions:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;

    .line 478
    .local v0, count:Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;
    if-eqz v0, :cond_2

    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, forceUnblock:Z
    const-string v3, "key_force_off"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "key_ime_show"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "key_option_tempHide"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 481
    :cond_0
    const/4 v1, 0x1

    .line 483
    :cond_1
    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu15/core/PenMenuStateManager$BlockCounter;->unblock(Z)Z

    move-result v2

    .line 486
    .end local v1           #forceUnblock:Z
    :cond_2
    return v2
.end method
