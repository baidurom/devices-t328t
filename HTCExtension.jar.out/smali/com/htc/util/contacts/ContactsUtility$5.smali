.class final Lcom/htc/util/contacts/ContactsUtility$5;
.super Ljava/lang/Object;
.source "ContactsUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility;->handleSocialNetworkLargePhotoEnd(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$rFinal:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .parameter

    .prologue
    .line 2126
    iput-object p1, p0, Lcom/htc/util/contacts/ContactsUtility$5;->val$rFinal:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 2130
    .local v1, tCurrent:Ljava/lang/Thread;
    if-eqz v1, :cond_0

    .line 2131
    monitor-enter v1

    .line 2133
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2138
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/util/contacts/ContactsUtility$5;->val$rFinal:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 2139
    monitor-exit v1

    .line 2143
    :goto_1
    return-void

    .line 2134
    :catch_0
    move-exception v0

    .line 2135
    .local v0, ie:Ljava/lang/InterruptedException;
    const-string v2, "ContactsUtility"

    const-string v3, "handleSocialNetworkLargePhotoEnd run InterruptedException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2139
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2141
    :cond_0
    iget-object v2, p0, Lcom/htc/util/contacts/ContactsUtility$5;->val$rFinal:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method
