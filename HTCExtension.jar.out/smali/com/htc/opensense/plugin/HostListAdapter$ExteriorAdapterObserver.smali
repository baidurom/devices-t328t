.class public Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "HostListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/plugin/HostListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExteriorAdapterObserver"
.end annotation


# instance fields
.field public adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

.field final synthetic this$0:Lcom/htc/opensense/plugin/HostListAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/plugin/HostListAdapter;Lcom/htc/opensense/plugin/ExteriorListAdapter;)V
    .locals 0
    .parameter
    .parameter "adapter"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->this$0:Lcom/htc/opensense/plugin/HostListAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 323
    iput-object p2, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 324
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->this$0:Lcom/htc/opensense/plugin/HostListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HostListAdapter;->notifyDataSetChanged()V

    .line 346
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->this$0:Lcom/htc/opensense/plugin/HostListAdapter;

    invoke-virtual {v0}, Lcom/htc/opensense/plugin/HostListAdapter;->notifyDataSetInvalidated()V

    .line 355
    return-void
.end method

.method public final registerDataSetObserver()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 330
    :cond_0
    return-void
.end method

.method public final unregisterDataSetObserver()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/htc/opensense/plugin/HostListAdapter$ExteriorAdapterObserver;->adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 337
    :cond_0
    return-void
.end method
