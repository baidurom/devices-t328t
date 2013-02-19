.class public Lcom/htc/opensense/social/GsonUtils;
.super Ljava/lang/Object;
.source "GsonUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/GsonUtils$1;,
        Lcom/htc/opensense/social/GsonUtils$IntentAdapter;,
        Lcom/htc/opensense/social/GsonUtils$UriAdapter;,
        Lcom/htc/opensense/social/GsonUtils$BundleAdapter;,
        Lcom/htc/opensense/social/GsonUtils$ComponentNameAdapter;
    }
.end annotation


# static fields
.field private static final BUILDER:Lcom/htc/gson/GsonBuilder;

.field private static sGson:Lcom/htc/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/htc/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/htc/gson/GsonBuilder;-><init>()V

    sput-object v0, Lcom/htc/opensense/social/GsonUtils;->BUILDER:Lcom/htc/gson/GsonBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    return-void
.end method

.method public static declared-synchronized getGson()Lcom/htc/gson/Gson;
    .locals 5

    .prologue
    .line 31
    const-class v1, Lcom/htc/opensense/social/GsonUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/opensense/social/GsonUtils;->sGson:Lcom/htc/gson/Gson;

    if-nez v0, :cond_0

    .line 32
    sget-object v0, Lcom/htc/opensense/social/GsonUtils;->BUILDER:Lcom/htc/gson/GsonBuilder;

    const-class v2, Landroid/content/ComponentName;

    new-instance v3, Lcom/htc/opensense/social/GsonUtils$ComponentNameAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/opensense/social/GsonUtils$ComponentNameAdapter;-><init>(Lcom/htc/opensense/social/GsonUtils$1;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/htc/gson/GsonBuilder;

    .line 33
    sget-object v0, Lcom/htc/opensense/social/GsonUtils;->BUILDER:Lcom/htc/gson/GsonBuilder;

    const-class v2, Landroid/content/Intent;

    new-instance v3, Lcom/htc/opensense/social/GsonUtils$IntentAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/opensense/social/GsonUtils$IntentAdapter;-><init>(Lcom/htc/opensense/social/GsonUtils$1;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/htc/gson/GsonBuilder;

    .line 34
    sget-object v0, Lcom/htc/opensense/social/GsonUtils;->BUILDER:Lcom/htc/gson/GsonBuilder;

    const-class v2, Landroid/net/Uri;

    new-instance v3, Lcom/htc/opensense/social/GsonUtils$UriAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/opensense/social/GsonUtils$UriAdapter;-><init>(Lcom/htc/opensense/social/GsonUtils$1;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/htc/gson/GsonBuilder;

    .line 35
    sget-object v0, Lcom/htc/opensense/social/GsonUtils;->BUILDER:Lcom/htc/gson/GsonBuilder;

    const-class v2, Landroid/os/Bundle;

    new-instance v3, Lcom/htc/opensense/social/GsonUtils$BundleAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/opensense/social/GsonUtils$BundleAdapter;-><init>(Lcom/htc/opensense/social/GsonUtils$1;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/htc/gson/GsonBuilder;

    .line 36
    sget-object v0, Lcom/htc/opensense/social/GsonUtils;->BUILDER:Lcom/htc/gson/GsonBuilder;

    invoke-virtual {v0}, Lcom/htc/gson/GsonBuilder;->create()Lcom/htc/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/GsonUtils;->sGson:Lcom/htc/gson/Gson;

    .line 38
    :cond_0
    sget-object v0, Lcom/htc/opensense/social/GsonUtils;->sGson:Lcom/htc/gson/Gson;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
