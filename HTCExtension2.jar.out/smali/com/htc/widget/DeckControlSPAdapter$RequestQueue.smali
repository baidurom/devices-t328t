.class public Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;
.super Ljava/lang/Object;
.source "DeckControlSPAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/DeckControlSPAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestQueue"
.end annotation


# instance fields
.field private capacity:I

.field private requestiterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private requestlock:Ljava/util/concurrent/locks/ReentrantLock;

.field private requestqueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/widget/DeckControlSPAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/widget/DeckControlSPAdapter;I)V
    .locals 2
    .parameter
    .parameter "icapacity"

    .prologue
    .line 752
    iput-object p1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 753
    if-lez p2, :cond_0

    .line 755
    iput p2, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    .line 756
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 757
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    .line 759
    :cond_0
    return-void
.end method

.method private remove(Ljava/lang/Integer;IZ)V
    .locals 5
    .parameter "addposition"
    .parameter "center"
    .parameter "force"

    .prologue
    .line 796
    const/4 v2, -0x1

    .line 797
    .local v2, tmpdistance:I
    const/4 v0, -0x1

    .line 799
    .local v0, maxdistance:I
    const/4 v3, 0x0

    .line 800
    .local v3, tmpposition:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 802
    .local v1, maxposition:Ljava/lang/Integer;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    .line 803
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    .line 805
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 807
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tmpposition:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .line 808
    .restart local v3       #tmpposition:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 810
    move-object v1, v3

    .line 811
    move v0, v2

    .line 813
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 815
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestiterator:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #tmpposition:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .line 816
    .restart local v3       #tmpposition:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 818
    if-ge v0, v2, :cond_0

    .line 820
    move-object v1, v3

    .line 821
    move v0, v2

    goto :goto_0

    .line 826
    :cond_1
    if-eqz p3, :cond_3

    .line 827
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 837
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 838
    const/4 v1, 0x0

    .line 839
    return-void

    .line 830
    :cond_3
    move-object v3, p1

    .line 831
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 833
    if-ge v2, v0, :cond_2

    .line 834
    iget-object v4, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public addFirst(Ljava/lang/Integer;IZ)V
    .locals 2
    .parameter "position"
    .parameter "center"
    .parameter "force"

    .prologue
    .line 867
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 872
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 874
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 875
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    if-ge v0, v1, :cond_4

    .line 878
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 881
    :cond_4
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->remove(Ljava/lang/Integer;IZ)V

    .line 882
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    if-ge v0, v1, :cond_3

    .line 883
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 888
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public addLast(Ljava/lang/Integer;IZ)V
    .locals 2
    .parameter "position"
    .parameter "center"
    .parameter "force"

    .prologue
    .line 898
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 905
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 906
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 908
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    if-ge v0, v1, :cond_4

    .line 909
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 912
    :cond_4
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->remove(Ljava/lang/Integer;IZ)V

    .line 913
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    if-ge v0, v1, :cond_3

    .line 914
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 919
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 983
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 990
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 991
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->clear()V

    .line 1010
    return-void
.end method

.method public remove(Ljava/lang/Integer;)V
    .locals 2
    .parameter "position"

    .prologue
    .line 847
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 859
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 853
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    iget-object v0, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public removeFirst()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 931
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 932
    :cond_0
    const/4 v0, 0x0

    .line 947
    :goto_0
    return-object v0

    .line 936
    :cond_1
    const/4 v0, 0x0

    .line 937
    .local v0, position:Ljava/lang/Integer;
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 939
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 940
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #position:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 944
    .restart local v0       #position:Ljava/lang/Integer;
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0           #position:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public removeLast()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 958
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 959
    :cond_0
    const/4 v0, 0x0

    .line 974
    :goto_0
    return-object v0

    .line 963
    :cond_1
    const/4 v0, 0x0

    .line 964
    .local v0, position:Ljava/lang/Integer;
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 966
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 967
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #position:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    .restart local v0       #position:Ljava/lang/Integer;
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v0           #position:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public setCapacity(I)V
    .locals 4
    .parameter "icapacity"

    .prologue
    const/4 v2, 0x1

    .line 767
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    if-eq p1, v1, :cond_0

    if-ge p1, v2, :cond_1

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 773
    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    if-ge p1, v1, :cond_4

    .line 775
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestqueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 777
    const/4 v0, 0x0

    .local v0, loop:I
    :goto_1
    iget v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    .line 778
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->this$0:Lcom/htc/widget/DeckControlSPAdapter;

    #getter for: Lcom/htc/widget/DeckControlSPAdapter;->center:I
    invoke-static {v2}, Lcom/htc/widget/DeckControlSPAdapter;->access$400(Lcom/htc/widget/DeckControlSPAdapter;)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->remove(Ljava/lang/Integer;IZ)V

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 779
    :cond_2
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    .end local v0           #loop:I
    :goto_2
    iget-object v1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 782
    :cond_3
    :try_start_1
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 789
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->requestlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 785
    :cond_4
    :try_start_2
    iput p1, p0, Lcom/htc/widget/DeckControlSPAdapter$RequestQueue;->capacity:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
