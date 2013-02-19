.class Lcom/htc/app/mf/FragmentManagerReflection;
.super Ljava/lang/Object;
.source "FragmentManagerReflection.java"


# instance fields
.field private STATE_RESUMED:I

.field private STATE_STARTED:I

.field private STATE_STOPPED:I

.field private mFmMoveToState:Ljava/lang/reflect/Method;

.field mManager:Landroid/app/FragmentManager;

.field private mToPause:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mToResume:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mToStart:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mToStop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/FragmentManager;)V
    .locals 5
    .parameter "fm"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v3, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mFmMoveToState:Ljava/lang/reflect/Method;

    .line 16
    const-class v0, Landroid/app/Fragment;

    const-string v1, "RESUMED"

    invoke-direct {p0, v3, v0, v1}, Lcom/htc/app/mf/FragmentManagerReflection;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->STATE_RESUMED:I

    .line 18
    const-class v0, Landroid/app/Fragment;

    const-string v1, "STARTED"

    invoke-direct {p0, v3, v0, v1}, Lcom/htc/app/mf/FragmentManagerReflection;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->STATE_STARTED:I

    .line 20
    const-class v0, Landroid/app/Fragment;

    const-string v1, "STOPPED"

    invoke-direct {p0, v3, v0, v1}, Lcom/htc/app/mf/FragmentManagerReflection;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->STATE_STOPPED:I

    .line 23
    iput-object v3, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mManager:Landroid/app/FragmentManager;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToResume:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToPause:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToStart:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToStop:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mManager:Landroid/app/FragmentManager;

    .line 35
    iget-object v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "moveToState"

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Fragment;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/app/mf/FragmentManagerReflection;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mFmMoveToState:Ljava/lang/reflect/Method;

    .line 37
    return-void
.end method

.method private accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "obj"
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/htc/app/mf/FragmentManagerReflection;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 42
    .local v2, f:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 44
    .local v0, b:Z
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 47
    .local v3, ret:Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    return-object v3

    .line 50
    .end local v0           #b:Z
    .end local v2           #f:Ljava/lang/reflect/Field;
    .end local v3           #ret:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 51
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    .local v1, f:Ljava/lang/reflect/Field;
    return-object v1

    .line 74
    .end local v1           #f:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter
    .parameter "name"
    .parameter "types"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    .local v1, m:Ljava/lang/reflect/Method;
    return-object v1

    .line 83
    .end local v1           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "obj"
    .parameter "mthd"
    .parameter "values"

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    .line 59
    .local v0, b:Z
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 60
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, ret:Ljava/lang/Object;
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-object v2

    .line 65
    .end local v0           #b:Z
    .end local v2           #ret:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method addToPauseList(Landroid/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToPause:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method addToResumeList(Landroid/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToResume:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method addToStartList(Landroid/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToStart:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method addToStopList(Landroid/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToStop:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method execList()V
    .locals 3

    .prologue
    .line 105
    iget-object v2, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToPause:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 106
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0, v0}, Lcom/htc/app/mf/FragmentManagerReflection;->pauseFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 109
    .end local v0           #f:Landroid/app/Fragment;
    :cond_0
    iget-object v2, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToStop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 110
    .restart local v0       #f:Landroid/app/Fragment;
    invoke-virtual {p0, v0}, Lcom/htc/app/mf/FragmentManagerReflection;->stopFragment(Landroid/app/Fragment;)V

    goto :goto_1

    .line 113
    .end local v0           #f:Landroid/app/Fragment;
    :cond_1
    iget-object v2, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToStart:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 114
    .restart local v0       #f:Landroid/app/Fragment;
    invoke-virtual {p0, v0}, Lcom/htc/app/mf/FragmentManagerReflection;->startFragment(Landroid/app/Fragment;)V

    goto :goto_2

    .line 117
    .end local v0           #f:Landroid/app/Fragment;
    :cond_2
    iget-object v2, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToResume:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 118
    .restart local v0       #f:Landroid/app/Fragment;
    invoke-virtual {p0, v0}, Lcom/htc/app/mf/FragmentManagerReflection;->resumeFragment(Landroid/app/Fragment;)V

    goto :goto_3

    .line 121
    .end local v0           #f:Landroid/app/Fragment;
    :cond_3
    iget-object v2, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToResume:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 122
    iget-object v2, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToPause:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 123
    iget-object v2, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToStart:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v2, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mToStop:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 125
    return-void
.end method

.method moveFragmentToState(Landroid/app/Fragment;I)V
    .locals 6
    .parameter "f"
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 150
    iget-object v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mManager:Landroid/app/FragmentManager;

    iget-object v1, p0, Lcom/htc/app/mf/FragmentManagerReflection;->mFmMoveToState:Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/app/mf/FragmentManagerReflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method pauseFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 132
    iget v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->STATE_STARTED:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/app/mf/FragmentManagerReflection;->moveFragmentToState(Landroid/app/Fragment;I)V

    .line 133
    return-void
.end method

.method resumeFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 128
    iget v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->STATE_RESUMED:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/app/mf/FragmentManagerReflection;->moveFragmentToState(Landroid/app/Fragment;I)V

    .line 129
    return-void
.end method

.method startFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 136
    iget v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->STATE_STARTED:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/app/mf/FragmentManagerReflection;->moveFragmentToState(Landroid/app/Fragment;I)V

    .line 137
    return-void
.end method

.method stopFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 140
    iget v0, p0, Lcom/htc/app/mf/FragmentManagerReflection;->STATE_STOPPED:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/app/mf/FragmentManagerReflection;->moveFragmentToState(Landroid/app/Fragment;I)V

    .line 141
    return-void
.end method
