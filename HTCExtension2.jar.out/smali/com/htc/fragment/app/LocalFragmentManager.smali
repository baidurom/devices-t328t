.class public Lcom/htc/fragment/app/LocalFragmentManager;
.super Ljava/lang/Object;
.source "LocalFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/app/LocalFragmentManager$Operation;
    }
.end annotation


# static fields
.field private static final FIELDS_TO_SAVE:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "LocalFragmentManager"


# instance fields
.field private control:Z

.field private currentId:Ljava/lang/String;

.field private currentTransaction:Landroid/app/FragmentTransaction;

.field private fieldCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private fragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private globalId:Ljava/lang/String;

.field private globalTagPrefix:Ljava/lang/String;

.field private host:Landroid/app/Fragment;

.field private methodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private packageContexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private stackSaved:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 855
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mPackageName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mWho"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mAdded"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mRemoving"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mResumed"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mFromLayout"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mInLayout"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mRestored"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mFragmentManager"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mFragmentId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mContainerId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mTag"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mHidden"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mDetached"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mRetaining"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mLoaderManager"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mLoadersStarted"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "mCheckedForLoaderManager"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/fragment/app/LocalFragmentManager;->FIELDS_TO_SAVE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .parameter "host"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "."

    iput-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->globalTagPrefix:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->globalId:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->control:Z

    .line 943
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fieldCache:Ljava/util/Map;

    .line 992
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->methodCache:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->packageContexts:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->stackSaved:Ljava/util/Map;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/htc/fragment/app/LocalFragmentManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    return-object v0
.end method

.method private accessField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 962
    .local p1, declaredClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "object"
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
    .line 966
    .local p2, declaredClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/app/LocalFragmentManager;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 967
    .local v2, f:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 969
    .local v0, b:Z
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 970
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 972
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 974
    .end local v0           #b:Z
    .end local v2           #f:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 975
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private activityIsResumed()Z
    .locals 3

    .prologue
    .line 892
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/Activity;

    const-string v2, "mResumed"

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "object"
    .parameter
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 980
    .local p2, declaredClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/app/LocalFragmentManager;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 981
    .local v2, f:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isAccessible()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 983
    .local v0, b:Z
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 984
    invoke-virtual {v2, p1, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 986
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 991
    return-void

    .line 986
    :catchall_0
    move-exception v3

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 988
    .end local v0           #b:Z
    .end local v2           #f:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 989
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private doOperation(Lcom/htc/fragment/app/LocalFragmentManager$Operation;)V
    .locals 2
    .parameter "op"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->currentTransaction:Landroid/app/FragmentTransaction;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->currentTransaction:Landroid/app/FragmentTransaction;

    invoke-interface {p1, v1}, Lcom/htc/fragment/app/LocalFragmentManager$Operation;->execute(Landroid/app/FragmentTransaction;)V

    .line 115
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 112
    .local v0, tx:Landroid/app/FragmentTransaction;
    invoke-interface {p1, v0}, Lcom/htc/fragment/app/LocalFragmentManager$Operation;->execute(Landroid/app/FragmentTransaction;)V

    .line 113
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method private varargs getAvailableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
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
    .line 1013
    .local p1, declaredClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, cacheKey:Ljava/lang/String;
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/fragment/app/LocalFragmentManager;->getAvailableMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    return-object v1
.end method

.method private varargs getAvailableMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter "cacheKey"
    .parameter
    .parameter "name"
    .parameter "types"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 1017
    .local p2, declaredClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/htc/fragment/app/LocalFragmentManager;->methodCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    iget-object v2, p0, Lcom/htc/fragment/app/LocalFragmentManager;->methodCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 1027
    :goto_0
    return-object v2

    .line 1020
    :cond_0
    const/4 v1, 0x0

    .line 1022
    .local v1, m:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p2, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1023
    iget-object v2, p0, Lcom/htc/fragment/app/LocalFragmentManager;->methodCache:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 1027
    goto :goto_0

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getContextByPackage(Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1059
    const/4 v0, 0x0

    .line 1060
    .local v0, pkgCtx:Landroid/content/Context;
    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->packageContexts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->packageContexts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #pkgCtx:Landroid/content/Context;
    check-cast v0, Landroid/content/Context;

    .line 1066
    .restart local v0       #pkgCtx:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 1064
    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->packageContexts:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6
    .parameter "object"
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
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 945
    .local p2, declaredClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, cacheKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fieldCache:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 947
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fieldCache:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 956
    :goto_0
    return-object v4

    .line 950
    :cond_0
    if-nez p1, :cond_1

    move-object v0, p2

    .line 951
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1
    if-eq v0, p2, :cond_2

    :try_start_0
    const-class v4, Ljava/lang/Object;

    if-eq v0, v4, :cond_2

    .line 952
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 950
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 954
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 955
    .local v3, f:Ljava/lang/reflect/Field;
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fieldCache:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 956
    goto :goto_0

    .line 957
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #f:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 958
    .local v2, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getFragment(Ljava/lang/String;Z)Landroid/app/Fragment;
    .locals 6
    .parameter "id"
    .parameter "syncFromGloalFragmentManager"

    .prologue
    const/4 v5, 0x3

    .line 430
    invoke-direct {p0, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->getGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, globalTag:Ljava/lang/String;
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 434
    iget-object v3, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 436
    .local v0, f:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    const-class v3, Landroid/app/Fragment;

    const-string v4, "mBackStackNesting"

    invoke-direct {p0, v0, v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_0

    .line 437
    iget-object v3, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_0
    const-string v3, "LocalFragmentManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 440
    const-string v3, "LocalFragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getFragment("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v0

    .line 448
    .end local v0           #f:Landroid/app/Fragment;
    .local v1, f:Landroid/app/Fragment;
    :goto_0
    return-object v1

    .line 444
    .end local v1           #f:Landroid/app/Fragment;
    :cond_2
    iget-object v3, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 445
    .restart local v0       #f:Landroid/app/Fragment;
    const-string v3, "LocalFragmentManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 446
    const-string v3, "LocalFragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " getFragment("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v1, v0

    .line 448
    .end local v0           #f:Landroid/app/Fragment;
    .restart local v1       #f:Landroid/app/Fragment;
    goto :goto_0
.end method

.method private getGlobalTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->globalTagPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
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
    .line 994
    .local p1, declaredClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, cacheKey:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->methodCache:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 996
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->methodCache:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 1010
    :goto_0
    return-object v4

    .line 998
    :cond_0
    const/4 v3, 0x0

    .line 1000
    .local v3, m:Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1001
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->methodCache:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v4, v3

    .line 1010
    goto :goto_0

    .line 1002
    :catch_0
    move-exception v1

    .line 1004
    .local v1, e:Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/fragment/app/LocalFragmentManager;->getAvailableMethod(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1005
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->methodCache:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1006
    :catch_1
    move-exception v2

    .line 1007
    .local v2, e2:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "object"
    .parameter "method"
    .parameter "values"

    .prologue
    .line 1031
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->isAccessible()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1033
    .local v0, b:Z
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1034
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1036
    :try_start_2
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1038
    .end local v0           #b:Z
    :catch_0
    move-exception v1

    .line 1039
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private isStateSaved()Z
    .locals 3

    .prologue
    .line 520
    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 521
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mStateSaved"

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private loadState(Landroid/app/Fragment;Ljava/util/Map;)V
    .locals 6
    .parameter "f"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 886
    .local p2, state:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/htc/fragment/app/LocalFragmentManager;->FIELDS_TO_SAVE:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 887
    .local v3, s:Ljava/lang/String;
    const-class v4, Landroid/app/Fragment;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v4, v3, v5}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 886
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private makeActive(Landroid/app/Fragment;)V
    .locals 7
    .parameter "f"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 843
    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 844
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "makeActive"

    new-array v3, v6, [Ljava/lang/Class;

    const-class v4, Landroid/app/Fragment;

    aput-object v4, v3, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    return-void
.end method

.method private makeInactive(Landroid/app/Fragment;)V
    .locals 8
    .parameter "f"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 848
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 849
    .local v1, state:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->saveState(Landroid/app/Fragment;Ljava/util/Map;)V

    .line 850
    iget-object v2, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 851
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "makeInactive"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/app/Fragment;

    aput-object v5, v4, v6

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-direct {p0, v0, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    invoke-direct {p0, p1, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->loadState(Landroid/app/Fragment;Ljava/util/Map;)V

    .line 854
    return-void
.end method

.method private moveToState(Landroid/app/Fragment;III)V
    .locals 10
    .parameter "f"
    .parameter "newState"
    .parameter "transit"
    .parameter "transitionStyle"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 895
    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 896
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "moveToState"

    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Landroid/app/Fragment;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    return-void
.end method

.method private restartFragment(Landroid/app/Fragment;)V
    .locals 6
    .parameter "f"

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 316
    .local v0, arguments:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".restart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 320
    .local v2, restart:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".restart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 321
    if-eqz v2, :cond_0

    .line 322
    const-string v3, "LocalFragmentManager"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 323
    const-string v3, "LocalFragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " restartFragment("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onRestart"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/fragment/app/LocalFragmentManager;->getAvailableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {p0, p1, v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 327
    :catch_0
    move-exception v1

    .line 329
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/NoSuchMethodException;

    if-nez v3, :cond_0

    .line 330
    throw v1
.end method

.method private saveState(Landroid/app/Fragment;Ljava/util/Map;)V
    .locals 5
    .parameter "f"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 881
    .local p2, state:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/htc/fragment/app/LocalFragmentManager;->FIELDS_TO_SAVE:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 882
    .local v3, s:Ljava/lang/String;
    const-class v4, Landroid/app/Fragment;

    invoke-direct {p0, p1, v4, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addFragment(ILjava/lang/String;Landroid/app/Fragment;)V
    .locals 4
    .parameter "containerViewId"
    .parameter "id"
    .parameter "f"

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/htc/fragment/app/LocalFragmentManager;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v1, "LocalFragmentManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const-string v1, "LocalFragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " addFragment("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    invoke-direct {p0, p2}, Lcom/htc/fragment/app/LocalFragmentManager;->getGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, globalTag:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 177
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicated Fragment ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", please check your tag strings when using CarouselHost.addTab()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    :cond_2
    new-instance v1, Lcom/htc/fragment/app/LocalFragmentManager$1;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/htc/fragment/app/LocalFragmentManager$1;-><init>(Lcom/htc/fragment/app/LocalFragmentManager;ILandroid/app/Fragment;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->doOperation(Lcom/htc/fragment/app/LocalFragmentManager$Operation;)V

    goto/16 :goto_0
.end method

.method public addFragment(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "containerViewId"
    .parameter "id"
    .parameter "fragmentDescription"

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->addFragment(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public addFragment(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "containerViewId"
    .parameter "id"
    .parameter "fragmentDescription"
    .parameter "arguments"

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0, p3, p4}, Lcom/htc/fragment/app/LocalFragmentManager;->loadFragment(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->addFragment(ILjava/lang/String;Landroid/app/Fragment;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addFragment(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 1
    .parameter "id"
    .parameter "f"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/htc/fragment/app/LocalFragmentManager;->addFragment(ILjava/lang/String;Landroid/app/Fragment;)V

    .line 159
    return-void
.end method

.method public addFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "fragmentDescription"

    .prologue
    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->addFragment(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public addFragment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "fragmentDescription"
    .parameter "arguments"

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/htc/fragment/app/LocalFragmentManager;->addFragment(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->currentTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please commit or rollback current transaction"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->currentTransaction:Landroid/app/FragmentTransaction;

    .line 82
    return-void
.end method

.method public commit()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->currentTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please begin a new transaction first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->currentTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->currentTransaction:Landroid/app/FragmentTransaction;

    .line 94
    return-void
.end method

.method public dispatchCreateView(Landroid/os/Bundle;)V
    .locals 10
    .parameter "saved"

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/htc/fragment/app/LocalFragmentManager;->getCurrentId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->getGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, globalTag:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/fragment/app/LocalFragmentManager;->stackSaved:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 533
    if-eqz p1, :cond_4

    .line 534
    iget-object v8, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 535
    .local v1, className:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tabs"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 536
    .local v7, tabs:[Ljava/lang/CharSequence;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/CharSequence;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_4

    aget-object v6, v0, v4

    .local v6, s:Ljava/lang/CharSequence;
    move-object v8, v6

    .line 537
    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 538
    .local v2, f:Landroid/app/Fragment;
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 539
    invoke-direct {p0, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->makeActive(Landroid/app/Fragment;)V

    .line 536
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 541
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->makeInactive(Landroid/app/Fragment;)V

    goto :goto_1

    .line 547
    .end local v0           #arr$:[Ljava/lang/CharSequence;
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #f:Landroid/app/Fragment;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #s:Ljava/lang/CharSequence;
    .end local v7           #tabs:[Ljava/lang/CharSequence;
    :cond_1
    iget-object v8, p0, Lcom/htc/fragment/app/LocalFragmentManager;->stackSaved:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 548
    .local v6, s:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/fragment/app/LocalFragmentManager;->stackSaved:Ljava/util/Map;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 549
    .restart local v2       #f:Landroid/app/Fragment;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 550
    invoke-direct {p0, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->makeActive(Landroid/app/Fragment;)V

    goto :goto_2

    .line 552
    :cond_2
    invoke-direct {p0, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->makeInactive(Landroid/app/Fragment;)V

    goto :goto_2

    .line 555
    .end local v2           #f:Landroid/app/Fragment;
    .end local v6           #s:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/htc/fragment/app/LocalFragmentManager;->stackSaved:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 557
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public dispatchDestroy(Z)V
    .locals 30
    .parameter "finishing"

    .prologue
    .line 769
    if-nez p1, :cond_b

    .line 771
    new-instance v13, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 772
    .local v13, fragmentsToDestroy:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/Fragment;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 773
    .local v8, cancelAdd:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/Fragment;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v12

    .line 774
    .local v12, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    const-string v26, "mTmpActions"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v12, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/Object;

    move-object/from16 v21, v25

    check-cast v21, [Ljava/lang/Object;

    .line 775
    .local v21, queuedActions:[Ljava/lang/Object;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_8

    .line 776
    const/16 v24, 0x0

    .line 777
    .local v24, txClass:Ljava/lang/Class;
    const/4 v5, 0x0

    .line 778
    .local v5, OP_ADD:I
    const/4 v6, 0x0

    .line 780
    .local v6, OP_REPLACE:I
    move-object/from16 v7, v21

    .local v7, arr$:[Ljava/lang/Object;
    array-length v15, v7

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    if-ge v14, v15, :cond_8

    aget-object v17, v7, v14

    .line 781
    .local v17, o:Ljava/lang/Object;
    if-nez v17, :cond_1

    .line 780
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 784
    :cond_1
    if-nez v24, :cond_2

    .line 785
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    .line 786
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    const-string v26, "OP_ADD"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 787
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    const-string v26, "OP_REPLACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_2
    move-object/from16 v23, v17

    .line 789
    check-cast v23, Landroid/app/FragmentTransaction;

    .line 790
    .local v23, tx:Landroid/app/FragmentTransaction;
    const-string v25, "mHead"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 792
    .local v18, op:Ljava/lang/Object;
    :goto_1
    if-eqz v18, :cond_0

    .line 793
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    .line 794
    .local v19, opClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-string v25, "fragment"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Fragment;

    .line 798
    .local v11, fragment:Landroid/app/Fragment;
    invoke-virtual {v11}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v25

    if-nez v25, :cond_5

    .line 799
    invoke-interface {v13, v11}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 800
    const-string v25, "cmd"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 801
    .local v9, cmd:I
    if-eq v9, v5, :cond_3

    if-ne v9, v6, :cond_4

    .line 802
    :cond_3
    invoke-interface {v8, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_4
    const-string v25, "prev"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .line 805
    .local v20, prevOp:Ljava/lang/Object;
    const-string v25, "next"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 806
    .local v16, nextOp:Ljava/lang/Object;
    if-eqz v20, :cond_6

    .line 807
    const-string v25, "next"

    const-string v26, "next"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 811
    :goto_2
    if-eqz v16, :cond_7

    .line 812
    const-string v25, "prev"

    const-string v26, "prev"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 818
    .end local v9           #cmd:I
    .end local v16           #nextOp:Ljava/lang/Object;
    .end local v20           #prevOp:Ljava/lang/Object;
    :cond_5
    :goto_3
    const-string v25, "next"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 819
    goto/16 :goto_1

    .line 809
    .restart local v9       #cmd:I
    .restart local v16       #nextOp:Ljava/lang/Object;
    .restart local v20       #prevOp:Ljava/lang/Object;
    :cond_6
    const-string v25, "mHead"

    const-string v26, "next"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 814
    :cond_7
    const-string v25, "mTail"

    const-string v26, "prev"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 824
    .end local v5           #OP_ADD:I
    .end local v6           #OP_REPLACE:I
    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v9           #cmd:I
    .end local v11           #fragment:Landroid/app/Fragment;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #nextOp:Ljava/lang/Object;
    .end local v17           #o:Ljava/lang/Object;
    .end local v18           #op:Ljava/lang/Object;
    .end local v19           #opClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v20           #prevOp:Ljava/lang/Object;
    .end local v23           #tx:Landroid/app/FragmentTransaction;
    .end local v24           #txClass:Ljava/lang/Class;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->size()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .local v7, arr$:[Ljava/lang/String;
    array-length v15, v7

    .restart local v15       #len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_4
    if-ge v14, v15, :cond_a

    aget-object v22, v7, v14

    .line 825
    .local v22, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Fragment;

    .line 826
    .local v10, f:Landroid/app/Fragment;
    invoke-interface {v8, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 827
    invoke-interface {v13, v10}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 832
    .end local v10           #f:Landroid/app/Fragment;
    .end local v22           #s:Ljava/lang/String;
    :cond_a
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Fragment;

    .line 833
    .restart local v10       #f:Landroid/app/Fragment;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/htc/fragment/app/LocalFragmentManager;->makeActive(Landroid/app/Fragment;)V

    .line 834
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    const-string v26, "removeFragment"

    const/16 v27, 0x3

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const-class v29, Landroid/app/Fragment;

    aput-object v29, v27, v28

    const/16 v28, 0x1

    sget-object v29, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v29, v27, v28

    const/16 v28, 0x2

    sget-object v29, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v29, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v25

    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v10, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x2

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v12, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 838
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v8           #cancelAdd:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/Fragment;>;"
    .end local v10           #f:Landroid/app/Fragment;
    .end local v12           #fragmentManager:Landroid/app/FragmentManager;
    .end local v13           #fragmentsToDestroy:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/app/Fragment;>;"
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #len$:I
    .end local v21           #queuedActions:[Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->packageContexts:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->clear()V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->clear()V

    .line 840
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 37

    .prologue
    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    move-object/from16 v32, v0

    const-class v33, Landroid/app/Fragment;

    const-string v34, "isInBackStack"

    const/16 v35, 0x0

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v33

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Boolean;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 674
    new-instance v27, Landroid/os/Bundle;

    invoke-direct/range {v27 .. v27}, Landroid/os/Bundle;-><init>()V

    .line 675
    .local v27, state:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    move-object/from16 v32, v0

    const-class v33, Landroid/app/Fragment;

    const-string v34, "mSavedFragmentState"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v11

    .line 678
    .local v11, fragmentManager:Landroid/app/FragmentManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    move-object/from16 v32, v0

    const-class v33, Landroid/app/Fragment;

    const-string v34, "mBackStackNesting"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 680
    .local v13, hostBackStackNesting:Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    const-string v33, "mTmpActions"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v11, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Ljava/lang/Object;

    move-object/from16 v23, v32

    check-cast v23, [Ljava/lang/Object;

    .line 681
    .local v23, queuedActions:[Ljava/lang/Object;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_8

    .line 682
    const/16 v31, 0x0

    .line 683
    .local v31, txClass:Ljava/lang/Class;
    const/4 v5, 0x0

    .line 684
    .local v5, OP_REMOVE:I
    const/4 v6, 0x0

    .line 685
    .local v6, OP_REPLACE:I
    move-object/from16 v7, v23

    .local v7, arr$:[Ljava/lang/Object;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    move v15, v14

    .end local v7           #arr$:[Ljava/lang/Object;
    .end local v14           #i$:I
    .end local v16           #len$:I
    .local v15, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    aget-object v20, v7, v15

    .line 686
    .local v20, o:Ljava/lang/Object;
    if-nez v20, :cond_1

    .line 685
    .end local v15           #i$:I
    :cond_0
    :goto_1
    add-int/lit8 v14, v15, 0x1

    .restart local v14       #i$:I
    move v15, v14

    .end local v14           #i$:I
    .restart local v15       #i$:I
    goto :goto_0

    .line 689
    :cond_1
    if-nez v31, :cond_2

    .line 690
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v31

    .line 691
    const-string v32, "OP_REMOVE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 692
    const-string v32, "OP_REPLACE"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_2
    move-object/from16 v30, v20

    .line 694
    check-cast v30, Landroid/app/FragmentTransaction;

    .line 695
    .local v30, tx:Landroid/app/FragmentTransaction;
    const-string v32, "mHead"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 696
    .local v12, head:Ljava/lang/Object;
    const-string v32, "mTail"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    .line 697
    .local v29, tail:Ljava/lang/Object;
    move-object/from16 v21, v12

    .line 698
    .end local v15           #i$:I
    .local v21, op:Ljava/lang/Object;
    :goto_2
    if-eqz v21, :cond_0

    .line 699
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    .line 701
    .local v22, opClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-string v32, "cmd"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 702
    .local v9, cmd:I
    const/16 v26, 0x0

    .line 703
    .local v26, shouldRemoveTabs:Z
    if-ne v9, v5, :cond_4

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    move-object/from16 v32, v0

    const-string v33, "fragment"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 706
    const/16 v26, 0x1

    .line 722
    :cond_3
    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_7

    if-eqz v26, :cond_7

    .line 723
    const-string v32, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    .line 724
    .local v24, removed:Ljava/util/List;,"Ljava/util/List<Landroid/app/Fragment;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/Map;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [Landroid/app/Fragment;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [Landroid/app/Fragment;

    .line 725
    .local v28, tabs:[Landroid/app/Fragment;
    move-object/from16 v8, v28

    .local v8, arr$:[Landroid/app/Fragment;
    array-length v0, v8

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_4
    move/from16 v0, v17

    if-ge v14, v0, :cond_6

    aget-object v10, v8, v14

    .line 727
    .local v10, f:Landroid/app/Fragment;
    const-class v32, Landroid/app/Fragment;

    const-string v33, "mBackStackNesting"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v10, v1, v2, v13}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 729
    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    move-object/from16 v32, v0

    invoke-virtual {v10}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->stackSaved:Ljava/util/Map;

    move-object/from16 v32, v0

    invoke-virtual {v10}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v32

    const-string v33, "removeFragment"

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const-class v36, Landroid/app/Fragment;

    aput-object v36, v34, v35

    const/16 v35, 0x1

    sget-object v36, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v36, v34, v35

    const/16 v35, 0x2

    sget-object v36, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v36, v34, v35

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v32

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v10, v33, v34

    const/16 v34, 0x1

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    const/16 v35, 0x0

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v11, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 708
    .end local v8           #arr$:[Landroid/app/Fragment;
    .end local v10           #f:Landroid/app/Fragment;
    .end local v14           #i$:I
    .end local v17           #len$:I
    .end local v24           #removed:Ljava/util/List;,"Ljava/util/List<Landroid/app/Fragment;>;"
    .end local v28           #tabs:[Landroid/app/Fragment;
    :cond_4
    if-ne v9, v6, :cond_3

    .line 710
    const-string v32, "removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    .line 711
    .restart local v24       #removed:Ljava/util/List;,"Ljava/util/List<Landroid/app/Fragment;>;"
    if-eqz v24, :cond_3

    .line 712
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/Fragment;

    .line 713
    .local v25, rf:Landroid/app/Fragment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 714
    const/16 v26, 0x1

    .line 715
    goto/16 :goto_3

    .line 738
    .end local v25           #rf:Landroid/app/Fragment;
    .restart local v8       #arr$:[Landroid/app/Fragment;
    .local v14, i$:I
    .restart local v17       #len$:I
    .restart local v28       #tabs:[Landroid/app/Fragment;
    :cond_6
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v32, v0

    if-lez v32, :cond_0

    .line 740
    const-string v32, "next"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    .line 741
    .local v18, newHead:Ljava/lang/Object;
    const-string v32, "mHead"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 742
    const-string v32, "prev"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 744
    const-string v32, "mTail"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 745
    .local v19, newTail:Ljava/lang/Object;
    const-string v32, "next"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    const-string v32, "prev"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v32

    move-object/from16 v3, v19

    invoke-direct {v0, v12, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 748
    const-string v32, "mTail"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 749
    const-string v32, "next"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 753
    .end local v8           #arr$:[Landroid/app/Fragment;
    .end local v14           #i$:I
    .end local v17           #len$:I
    .end local v18           #newHead:Ljava/lang/Object;
    .end local v19           #newTail:Ljava/lang/Object;
    .end local v24           #removed:Ljava/util/List;,"Ljava/util/List<Landroid/app/Fragment;>;"
    .end local v28           #tabs:[Landroid/app/Fragment;
    :cond_7
    const-string v32, "next"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    .line 754
    goto/16 :goto_2

    .line 758
    .end local v5           #OP_REMOVE:I
    .end local v6           #OP_REPLACE:I
    .end local v9           #cmd:I
    .end local v11           #fragmentManager:Landroid/app/FragmentManager;
    .end local v12           #head:Ljava/lang/Object;
    .end local v13           #hostBackStackNesting:Ljava/lang/Object;
    .end local v20           #o:Ljava/lang/Object;
    .end local v21           #op:Ljava/lang/Object;
    .end local v22           #opClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v23           #queuedActions:[Ljava/lang/Object;
    .end local v26           #shouldRemoveTabs:Z
    .end local v27           #state:Landroid/os/Bundle;
    .end local v29           #tail:Ljava/lang/Object;
    .end local v30           #tx:Landroid/app/FragmentTransaction;
    .end local v31           #txClass:Ljava/lang/Class;
    :cond_8
    return-void
.end method

.method public dispatchHiddenChanged(Z)V
    .locals 3
    .parameter "hidden"

    .prologue
    .line 642
    iget-object v2, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 643
    .local v0, f:Landroid/app/Fragment;
    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->hideFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->showFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 649
    .end local v0           #f:Landroid/app/Fragment;
    :cond_1
    return-void
.end method

.method public dispatchPause(Z)V
    .locals 3
    .parameter "finishing"

    .prologue
    .line 630
    iget-object v2, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 631
    .local v0, f:Landroid/app/Fragment;
    invoke-direct {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->makeActive(Landroid/app/Fragment;)V

    goto :goto_0

    .line 633
    .end local v0           #f:Landroid/app/Fragment;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/fragment/app/LocalFragmentManager;->control:Z

    .line 634
    return-void
.end method

.method public dispatchRestart()V
    .locals 5

    .prologue
    .line 567
    iget-object v3, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 568
    .local v1, f:Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 569
    .local v0, arguments:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 570
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".restart"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 573
    .end local v0           #arguments:Landroid/os/Bundle;
    .end local v1           #f:Landroid/app/Fragment;
    :cond_1
    return-void
.end method

.method public dispatchResume()V
    .locals 5

    .prologue
    .line 605
    iget-boolean v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->control:Z

    if-eqz v4, :cond_1

    .line 619
    :cond_0
    return-void

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/app/LocalFragmentManager;->getCurrentId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->getGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, globalTag:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 610
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 612
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 613
    invoke-direct {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->makeActive(Landroid/app/Fragment;)V

    .line 614
    invoke-direct {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->restartFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 616
    :cond_2
    invoke-direct {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->makeInactive(Landroid/app/Fragment;)V

    goto :goto_0
.end method

.method public dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "saved"

    .prologue
    .line 656
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, className:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v3, tabs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 659
    .local v2, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->globalTagPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 661
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tabs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 662
    return-void
.end method

.method public dispatchStart()V
    .locals 5

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/htc/fragment/app/LocalFragmentManager;->getCurrentId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->getGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, globalTag:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 585
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 587
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 588
    invoke-direct {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->makeActive(Landroid/app/Fragment;)V

    .line 589
    invoke-direct {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->restartFragment(Landroid/app/Fragment;)V

    goto :goto_0

    .line 591
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->makeInactive(Landroid/app/Fragment;)V

    goto :goto_0

    .line 594
    .end local v0           #f:Landroid/app/Fragment;
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->control:Z

    .line 595
    return-void
.end method

.method public executePendingTransactions()V
    .locals 2

    .prologue
    .line 906
    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 907
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 908
    return-void
.end method

.method public getContainerId(Landroid/app/Fragment;)I
    .locals 2
    .parameter "f"

    .prologue
    .line 924
    const-class v0, Landroid/app/Fragment;

    const-string v1, "mContainerId"

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getContainerId(Ljava/lang/String;)I
    .locals 2
    .parameter "mTag"

    .prologue
    .line 915
    invoke-virtual {p0, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 916
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->getContainerId(Landroid/app/Fragment;)I

    move-result v1

    return v1
.end method

.method public getContext(Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "classDescription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1048
    const/4 v0, 0x0

    .line 1049
    .local v0, packageName:Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1050
    .local v1, x:I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 1051
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1056
    invoke-direct {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->getContextByPackage(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    :goto_0
    return-object v2

    .line 1053
    :cond_0
    iget-object v2, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    goto :goto_0
.end method

.method public getCurrentFragment()Landroid/app/Fragment;
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    iget-object v1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->currentId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->getGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method

.method public getCurrentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->currentId:Ljava/lang/String;

    return-object v0
.end method

.method public getFragment(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .parameter "id"

    .prologue
    .line 425
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentCount()I
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getGlobalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->globalId:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->host:Landroid/app/Fragment;

    return-object v0
.end method

.method public hideFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/htc/fragment/app/LocalFragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v0, "LocalFragmentManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    const-string v0, "LocalFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hideFragment("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1
    new-instance v0, Lcom/htc/fragment/app/LocalFragmentManager$4;

    invoke-direct {v0, p0, p1}, Lcom/htc/fragment/app/LocalFragmentManager$4;-><init>(Lcom/htc/fragment/app/LocalFragmentManager;Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->doOperation(Lcom/htc/fragment/app/LocalFragmentManager$Operation;)V

    goto :goto_0
.end method

.method public hideFragment(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->hideFragment(Landroid/app/Fragment;)V

    .line 342
    return-void
.end method

.method public loadFragment(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .parameter "fragmentDescription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 464
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->loadFragment(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public loadFragment(Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 12
    .parameter "fragmentDescription"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 472
    invoke-virtual {p0, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->getContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    .line 473
    .local v3, pkgCtx:Landroid/content/Context;
    const/4 v0, 0x0

    .line 474
    .local v0, className:Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 475
    .local v6, x:I
    const/4 v7, -0x1

    if-le v6, v7, :cond_3

    .line 476
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, remain:Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_2

    .line 478
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    .end local v4           #remain:Ljava/lang/String;
    :goto_0
    invoke-static {v3, v0, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    .line 489
    .local v2, f:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/htc/fragment/app/LocalFragmentManager;->getHost()Landroid/app/Fragment;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 491
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "setPackageContext"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Landroid/content/Context;

    aput-object v11, v9, v10

    invoke-direct {p0, v7, v8, v9}, Lcom/htc/fragment/app/LocalFragmentManager;->getAvailableMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-direct {p0, v2, v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_0
    const-string v7, "LocalFragmentManager"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 514
    const-string v7, "LocalFragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " loadFragment("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_1
    return-object v2

    .line 480
    .end local v2           #f:Landroid/app/Fragment;
    .restart local v4       #remain:Ljava/lang/String;
    :cond_2
    move-object v0, v4

    goto/16 :goto_0

    .line 483
    .end local v4           #remain:Ljava/lang/String;
    :cond_3
    move-object v0, p1

    goto/16 :goto_0

    .line 492
    .restart local v2       #f:Landroid/app/Fragment;
    :catch_0
    move-exception v1

    .line 493
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/NoSuchMethodException;

    if-eqz v7, :cond_4

    .line 494
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Pluggable fragment must implement two methods:\n"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v7, "-----------------------------------------------------------------------------------------------------------\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v7, "    private Context packageContext;\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v7, "    public void setPackageContext(Context packageContext) {\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v7, "        this.packageContext = packageContext;\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v7, "    }\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v7, "    public LayoutInflater getLayoutInflater(Bundle savedInstanceState) {\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const-string v7, "        if (packageContext != null) {\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string v7, "            return (LayoutInflater)packageContext.getSystemService(Context.LAYOUT_INFLATER_SERVICE);\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v7, "        }\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    const-string v7, "        return getActivity().getLayoutInflater();\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v7, "    }\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string v7, "-----------------------------------------------------------------------------------------------------------\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 509
    .end local v5           #sb:Ljava/lang/StringBuilder;
    :cond_4
    throw v1
.end method

.method public pauseFragment(Landroid/app/Fragment;)V
    .locals 4
    .parameter "f"

    .prologue
    const/4 v3, 0x0

    .line 281
    invoke-direct {p0}, Lcom/htc/fragment/app/LocalFragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "LocalFragmentManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    const-string v0, "LocalFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pauseFragment("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_2
    const-class v0, Landroid/app/Fragment;

    const-string v1, "STARTED"

    invoke-direct {p0, v0, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v3, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->moveToState(Landroid/app/Fragment;III)V

    .line 290
    invoke-direct {p0, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->makeInactive(Landroid/app/Fragment;)V

    goto :goto_0
.end method

.method public removeFragment(Landroid/app/Fragment;Z)V
    .locals 3
    .parameter "f"
    .parameter "finishing"

    .prologue
    .line 206
    const-string v0, "LocalFragmentManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "LocalFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removeFragment("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    if-nez p2, :cond_1

    if-nez p1, :cond_3

    .line 210
    :cond_1
    if-eqz p1, :cond_2

    .line 211
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_2
    :goto_0
    return-void

    .line 215
    :cond_3
    if-eqz p1, :cond_2

    .line 216
    new-instance v0, Lcom/htc/fragment/app/LocalFragmentManager$2;

    invoke-direct {v0, p0, p1}, Lcom/htc/fragment/app/LocalFragmentManager$2;-><init>(Lcom/htc/fragment/app/LocalFragmentManager;Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->doOperation(Lcom/htc/fragment/app/LocalFragmentManager$Operation;)V

    goto :goto_0
.end method

.method public removeFragment(Ljava/lang/String;Z)V
    .locals 2
    .parameter "id"
    .parameter "finishing"

    .prologue
    .line 194
    if-eqz p2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->getGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/htc/fragment/app/LocalFragmentManager;->removeFragment(Landroid/app/Fragment;Z)V

    goto :goto_0
.end method

.method public varargs removeFragments(Z[Landroid/app/Fragment;)V
    .locals 7
    .parameter "finishing"
    .parameter "fs"

    .prologue
    .line 252
    const-string v4, "LocalFragmentManager"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    const-string v4, "LocalFragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " removeFragments("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    if-eqz p1, :cond_2

    .line 256
    move-object v0, p2

    .local v0, arr$:[Landroid/app/Fragment;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v1, v0, v2

    .line 257
    .local v1, f:Landroid/app/Fragment;
    if-eqz v1, :cond_1

    .line 258
    iget-object v4, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v0           #arr$:[Landroid/app/Fragment;
    .end local v1           #f:Landroid/app/Fragment;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_2
    new-instance v4, Lcom/htc/fragment/app/LocalFragmentManager$3;

    invoke-direct {v4, p0, p2}, Lcom/htc/fragment/app/LocalFragmentManager$3;-><init>(Lcom/htc/fragment/app/LocalFragmentManager;[Landroid/app/Fragment;)V

    invoke-direct {p0, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->doOperation(Lcom/htc/fragment/app/LocalFragmentManager$Operation;)V

    .line 273
    :cond_3
    return-void
.end method

.method public varargs removeFragments(Z[Ljava/lang/String;)V
    .locals 10
    .parameter "finishing"
    .parameter "ids"

    .prologue
    .line 230
    if-eqz p1, :cond_1

    .line 231
    const-string v7, "LocalFragmentManager"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 232
    const-string v7, "LocalFragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " removeFragments("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v4, v0, v3

    .line 236
    .local v4, id:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/fragment/app/LocalFragmentManager;->fragments:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/htc/fragment/app/LocalFragmentManager;->getGlobalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 240
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #len$:I
    :cond_1
    array-length v7, p2

    new-array v1, v7, [Landroid/app/Fragment;

    .line 241
    .local v1, fs:[Landroid/app/Fragment;
    const/4 v2, 0x0

    .local v2, i:I
    array-length v6, v1

    .local v6, n:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 242
    aget-object v7, p2, v2

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;Z)Landroid/app/Fragment;

    move-result-object v7

    aput-object v7, v1, v2

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 244
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->removeFragments(Z[Landroid/app/Fragment;)V

    .line 245
    .end local v1           #fs:[Landroid/app/Fragment;
    .end local v2           #i:I
    .end local v6           #n:I
    :cond_3
    return-void
.end method

.method public resumeFragment(Landroid/app/Fragment;)V
    .locals 4
    .parameter "f"

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-direct {p0}, Lcom/htc/fragment/app/LocalFragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    invoke-direct {p0}, Lcom/htc/fragment/app/LocalFragmentManager;->activityIsResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Landroid/app/Fragment;

    const-string v1, "mAdded"

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "LocalFragmentManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    const-string v0, "LocalFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resumeFragment("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->makeActive(Landroid/app/Fragment;)V

    .line 309
    invoke-direct {p0, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->restartFragment(Landroid/app/Fragment;)V

    .line 310
    const-class v0, Landroid/app/Fragment;

    const-string v1, "RESUMED"

    invoke-direct {p0, v0, v1}, Lcom/htc/fragment/app/LocalFragmentManager;->accessField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, p1, v0, v3, v3}, Lcom/htc/fragment/app/LocalFragmentManager;->moveToState(Landroid/app/Fragment;III)V

    goto :goto_0
.end method

.method public rollback()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->currentTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please begin a new transaction first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->currentTransaction:Landroid/app/FragmentTransaction;

    .line 105
    return-void
.end method

.method public setArguments(Landroid/app/Fragment;Landroid/os/Bundle;)V
    .locals 2
    .parameter "f"
    .parameter "arguments"

    .prologue
    .line 940
    const-class v0, Landroid/app/Fragment;

    const-string v1, "mArguments"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 941
    return-void
.end method

.method public setContainerId(Landroid/app/Fragment;I)V
    .locals 3
    .parameter "f"
    .parameter "containerId"

    .prologue
    .line 932
    const-class v0, Landroid/app/Fragment;

    const-string v1, "mContainerId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/htc/fragment/app/LocalFragmentManager;->assignField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 933
    return-void
.end method

.method public setCurrentId(Ljava/lang/String;)V
    .locals 3
    .parameter "currentId"

    .prologue
    .line 414
    const-string v0, "LocalFragmentManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    const-string v0, "LocalFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setCurrentId("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_0
    iput-object p1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->currentId:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setGlobalId(Ljava/lang/String;)V
    .locals 2
    .parameter "globalId"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/fragment/app/LocalFragmentManager;->globalId:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/app/LocalFragmentManager;->globalTagPrefix:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public showFragment(Landroid/app/Fragment;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/htc/fragment/app/LocalFragmentManager;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    :goto_0
    return-void

    .line 382
    :cond_0
    const-string v0, "LocalFragmentManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    const-string v0, "LocalFragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " showFragment("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    new-instance v0, Lcom/htc/fragment/app/LocalFragmentManager$5;

    invoke-direct {v0, p0, p1}, Lcom/htc/fragment/app/LocalFragmentManager$5;-><init>(Lcom/htc/fragment/app/LocalFragmentManager;Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->doOperation(Lcom/htc/fragment/app/LocalFragmentManager$Operation;)V

    goto :goto_0
.end method

.method public showFragment(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 369
    invoke-virtual {p0, p1}, Lcom/htc/fragment/app/LocalFragmentManager;->getFragment(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/app/LocalFragmentManager;->showFragment(Landroid/app/Fragment;)V

    .line 370
    return-void
.end method
