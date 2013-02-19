.class public final Landroid/os/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field static final FLAGS_RESERVED:I = -0x2

.field static final FLAGS_TO_CLEAR_ON_COPY_FROM:I = -0x1

.field static final FLAG_IN_USE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static sPool:Landroid/os/Message;

.field private static sPoolSize:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field callback:Ljava/lang/Runnable;

.field data:Landroid/os/Bundle;

.field public expressNo:J

.field flags:I

.field next:Landroid/os/Message;

.field public obj:Ljava/lang/Object;

.field public replyTo:Landroid/os/Messenger;

.field target:Landroid/os/Handler;

.field public what:I

.field when:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    .line 106
    const/4 v0, 0x0

    sput v0, Landroid/os/Message;->sPoolSize:I

    .line 432
    new-instance v0, Landroid/os/Message$1;

    invoke-direct {v0}, Landroid/os/Message$1;-><init>()V

    sput-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 396
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 397
    return-void
.end method

.method static synthetic access$000(Landroid/os/Message;Landroid/os/Parcel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/os/Message;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static obtain()Landroid/os/Message;
    .locals 3

    .prologue
    .line 115
    sget-object v2, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 116
    :try_start_0
    sget-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 117
    sget-object v0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 118
    .local v0, m:Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    sput-object v1, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 119
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 120
    sget v1, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/os/Message;->sPoolSize:I

    .line 121
    monitor-exit v2

    .line 124
    .end local v0           #m:Landroid/os/Message;
    :goto_0
    return-object v0

    .line 123
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    goto :goto_0

    .line 123
    .restart local v0       #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/os/Handler;)Landroid/os/Message;
    .locals 1
    .parameter "h"

    .prologue
    .line 155
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 158
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;I)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "what"

    .prologue
    .line 184
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 186
    iput p1, v0, Landroid/os/Message;->what:I

    .line 188
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;III)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 219
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 220
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 221
    iput p1, v0, Landroid/os/Message;->what:I

    .line 222
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 223
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 225
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 241
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 242
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 243
    iput p1, v0, Landroid/os/Message;->what:I

    .line 244
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 245
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 246
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 200
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 201
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 202
    iput p1, v0, Landroid/os/Message;->what:I

    .line 203
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 205
    return-object v0
.end method

.method public static obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;
    .locals 1
    .parameter "h"
    .parameter "callback"

    .prologue
    .line 169
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 170
    .local v0, m:Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 171
    iput-object p1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 173
    return-object v0
.end method

.method public static obtain(Landroid/os/Message;)Landroid/os/Message;
    .locals 3
    .parameter "orig"

    .prologue
    .line 134
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 135
    .local v0, m:Landroid/os/Message;
    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 136
    iget v1, p0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 137
    iget v1, p0, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 138
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 140
    iget-object v1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 143
    :cond_0
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    iput-object v1, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 144
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    iput-object v1, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 146
    return-object v0
.end method

.method private final readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 481
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/Message;->when:J

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 483
    invoke-static {p1}, Landroid/os/Messenger;->readMessengerOrNullFromParcel(Landroid/os/Parcel;)Landroid/os/Messenger;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 484
    return-void
.end method


# virtual methods
.method clearForRecycle()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 372
    iput v1, p0, Landroid/os/Message;->flags:I

    .line 373
    iput v1, p0, Landroid/os/Message;->what:I

    .line 374
    iput v1, p0, Landroid/os/Message;->arg1:I

    .line 375
    iput v1, p0, Landroid/os/Message;->arg2:I

    .line 376
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 377
    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 378
    iput-wide v2, p0, Landroid/os/Message;->when:J

    .line 379
    iput-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 380
    iput-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    .line 381
    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 383
    iput-wide v2, p0, Landroid/os/Message;->expressNo:J

    .line 384
    return-void
.end method

.method public copyFrom(Landroid/os/Message;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 274
    iget v0, p1, Landroid/os/Message;->flags:I

    and-int/lit8 v0, v0, 0x0

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 275
    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/os/Message;->what:I

    .line 276
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Landroid/os/Message;->arg1:I

    .line 277
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Landroid/os/Message;->arg2:I

    .line 278
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 281
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p1, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 339
    :cond_0
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public getTarget()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .prologue
    .line 292
    iget-wide v0, p0, Landroid/os/Message;->when:J

    return-wide v0
.end method

.method isInUse()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 387
    iget v1, p0, Landroid/os/Message;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method markInUse()V
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Landroid/os/Message;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/Message;->flags:I

    .line 392
    return-void
.end method

.method public peekData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    return-object v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/os/Message;->clearForRecycle()V

    .line 259
    sget-object v1, Landroid/os/Message;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    sget v0, Landroid/os/Message;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 261
    sget-object v0, Landroid/os/Message;->sPool:Landroid/os/Message;

    iput-object v0, p0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 262
    sput-object p0, Landroid/os/Message;->sPool:Landroid/os/Message;

    .line 263
    sget v0, Landroid/os/Message;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/Message;->sPoolSize:I

    .line 265
    :cond_0
    monitor-exit v1

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendToTarget()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 369
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 360
    iput-object p1, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    .line 361
    return-void
.end method

.method public setTarget(Landroid/os/Handler;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 296
    iput-object p1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 297
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Message;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(J)Ljava/lang/String;
    .locals 3
    .parameter "now"

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v0, b:Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{ what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    const-string v1, " when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    iget-wide v1, p0, Landroid/os/Message;->when:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 412
    iget v1, p0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_0

    .line 413
    const-string v1, " arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    iget v1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    :cond_0
    iget v1, p0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1

    .line 418
    const-string v1, " arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget v1, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    :cond_1
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 423
    const-string v1, " obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    :cond_2
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 450
    iget-object v2, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 451
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t marshal callbacks across processes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 454
    :cond_0
    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget v2, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget v2, p0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 459
    :try_start_0
    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcelable;

    .line 460
    .local v1, p:Landroid/os/Parcelable;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v1           #p:Landroid/os/Parcelable;
    :goto_0
    iget-wide v2, p0, Landroid/os/Message;->when:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 470
    iget-object v2, p0, Landroid/os/Message;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 471
    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v2, p1}, Landroid/os/Messenger;->writeMessengerOrNullToParcel(Landroid/os/Messenger;Landroid/os/Parcel;)V

    .line 472
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t marshal non-Parcelable objects across processes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 467
    .end local v0           #e:Ljava/lang/ClassCastException;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
