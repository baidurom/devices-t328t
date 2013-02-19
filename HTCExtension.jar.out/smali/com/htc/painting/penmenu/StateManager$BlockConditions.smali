.class Lcom/htc/painting/penmenu/StateManager$BlockConditions;
.super Ljava/lang/Object;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BlockConditions"
.end annotation


# static fields
.field public static final KEY_FORCE_OFF:Ljava/lang/String; = "key_force_off"

.field public static final KEY_IME_SHOW:Ljava/lang/String; = "key_ime_show"

.field public static final KEY_OVERLAY_UI:Ljava/lang/String; = "key_overlay_ui"


# instance fields
.field private mConditions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/painting/penmenu/StateManager$BlockCounter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/painting/penmenu/StateManager$BlockConditions;->mConditions:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/painting/penmenu/StateManager$BlockConditions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/htc/painting/penmenu/StateManager$BlockConditions;->isBlocked()Z

    move-result v0

    return v0
.end method

.method private isBlocked()Z
    .locals 5

    .prologue
    .line 185
    const/4 v3, 0x0

    .line 186
    .local v3, isBlocked:Z
    iget-object v4, p0, Lcom/htc/painting/penmenu/StateManager$BlockConditions;->mConditions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 187
    .local v1, conditions:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/painting/penmenu/StateManager$BlockCounter;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/StateManager$BlockCounter;

    .line 188
    .local v0, block:Lcom/htc/painting/penmenu/StateManager$BlockCounter;
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/StateManager$BlockCounter;->isBlocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    const/4 v3, 0x1

    .line 193
    .end local v0           #block:Lcom/htc/painting/penmenu/StateManager$BlockCounter;
    :cond_1
    return v3
.end method


# virtual methods
.method public block(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 210
    iget-object v1, p0, Lcom/htc/painting/penmenu/StateManager$BlockConditions;->mConditions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/StateManager$BlockCounter;

    .line 212
    .local v0, count:Lcom/htc/painting/penmenu/StateManager$BlockCounter;
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/htc/painting/penmenu/StateManager$BlockCounter;

    .end local v0           #count:Lcom/htc/painting/penmenu/StateManager$BlockCounter;
    invoke-direct {v0}, Lcom/htc/painting/penmenu/StateManager$BlockCounter;-><init>()V

    .line 214
    .restart local v0       #count:Lcom/htc/painting/penmenu/StateManager$BlockCounter;
    iget-object v1, p0, Lcom/htc/painting/penmenu/StateManager$BlockConditions;->mConditions:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/StateManager$BlockCounter;->block()V

    .line 218
    return-void
.end method

.method public isBlocked(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, ret:Z
    iget-object v2, p0, Lcom/htc/painting/penmenu/StateManager$BlockConditions;->mConditions:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/StateManager$BlockCounter;

    .line 199
    .local v0, count:Lcom/htc/painting/penmenu/StateManager$BlockCounter;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Lcom/htc/painting/penmenu/StateManager$BlockCounter;->isBlocked()Z

    move-result v1

    .line 202
    :cond_0
    return v1
.end method

.method public unblock(Ljava/lang/String;)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 225
    const/4 v2, 0x1

    .line 226
    .local v2, unblocked:Z
    iget-object v3, p0, Lcom/htc/painting/penmenu/StateManager$BlockConditions;->mConditions:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/penmenu/StateManager$BlockCounter;

    .line 227
    .local v0, count:Lcom/htc/painting/penmenu/StateManager$BlockCounter;
    if-eqz v0, :cond_2

    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, forceUnblock:Z
    const-string v3, "key_force_off"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "key_ime_show"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    :cond_0
    const/4 v1, 0x1

    .line 232
    :cond_1
    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/StateManager$BlockCounter;->unblock(Z)Z

    move-result v2

    .line 235
    .end local v1           #forceUnblock:Z
    :cond_2
    return v2
.end method
