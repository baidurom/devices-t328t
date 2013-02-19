.class Lcom/android/server/MountService$MountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountObbAction"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "obbState"
    .parameter "key"

    .prologue
    .line 3253
    iput-object p1, p0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    .line 3254
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3255
    iput-object p3, p0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    .line 3256
    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 1

    .prologue
    .line 3341
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3342
    return-void
.end method

.method public handleExecute()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3260
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v12}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)V

    .line 3261
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->warnOnNotMounted()V
    invoke-static {v12}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)V

    .line 3263
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/MountService$MountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v10

    .line 3265
    .local v10, obbInfo:Landroid/content/res/ObbInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    iget-object v13, v10, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v14, v14, Lcom/android/server/MountService$ObbState;->callerUid:I

    #calls: Lcom/android/server/MountService;->isUidOwnerOfPackageOrSystem(Ljava/lang/String;I)Z
    invoke-static {v12, v13, v14}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;Ljava/lang/String;I)Z

    move-result v12

    if-nez v12, :cond_0

    .line 3266
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Denied attempt to mount OBB "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " which is owned by "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    const/16 v12, 0x19

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3337
    :goto_0
    return-void

    .line 3273
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v12}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v13

    monitor-enter v13

    .line 3274
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v12}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v12

    iget-object v14, v10, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-interface {v12, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 3275
    .local v7, isMounted:Z
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3276
    if-eqz v7, :cond_1

    .line 3277
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attempt to mount OBB which is already mounted: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3278
    const/16 v12, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_0

    .line 3275
    .end local v7           #isMounted:Z
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12

    .line 3286
    .restart local v7       #isMounted:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v13, v10, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    iput-object v13, v12, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    .line 3289
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    if-nez v12, :cond_3

    .line 3290
    const-string v6, "none"

    .line 3311
    .local v6, hashedKey:Ljava/lang/String;
    :goto_1
    const/4 v11, 0x0

    .line 3312
    .local v11, rc:I
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "obb mount %s %s %d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/MountService$ObbState;->callerUid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3315
    .local v2, cmd:Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v12}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3323
    :cond_2
    :goto_2
    if-nez v11, :cond_4

    .line 3325
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Successfully mounted OBB "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v14, v14, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v12}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v13

    monitor-enter v13

    .line 3328
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->this$0:Lcom/android/server/MountService;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    #calls: Lcom/android/server/MountService;->addObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    invoke-static {v12, v14}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3329
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3331
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_0

    .line 3293
    .end local v2           #cmd:Ljava/lang/String;
    .end local v6           #hashedKey:Ljava/lang/String;
    .end local v11           #rc:I
    :cond_3
    :try_start_4
    const-string v12, "PBKDF2WithHmacSHA1"

    invoke-static {v12}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 3295
    .local v5, factory:Ljavax/crypto/SecretKeyFactory;
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/MountService$MountObbAction;->mKey:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    iget-object v13, v10, Landroid/content/res/ObbInfo;->salt:[B

    const/16 v14, 0x400

    const/16 v15, 0x80

    invoke-direct {v9, v12, v13, v14, v15}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 3297
    .local v9, ks:Ljava/security/spec/KeySpec;
    invoke-virtual {v5, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v8

    .line 3298
    .local v8, key:Ljavax/crypto/SecretKey;
    new-instance v1, Ljava/math/BigInteger;

    invoke-interface {v8}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/math/BigInteger;-><init>([B)V

    .line 3299
    .local v1, bi:Ljava/math/BigInteger;
    const/16 v12, 0x10

    invoke-virtual {v1, v12}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v6

    .restart local v6       #hashedKey:Ljava/lang/String;
    goto/16 :goto_1

    .line 3300
    .end local v1           #bi:Ljava/math/BigInteger;
    .end local v5           #factory:Ljavax/crypto/SecretKeyFactory;
    .end local v6           #hashedKey:Ljava/lang/String;
    .end local v8           #key:Ljavax/crypto/SecretKey;
    .end local v9           #ks:Ljava/security/spec/KeySpec;
    :catch_0
    move-exception v4

    .line 3301
    .local v4, e:Ljava/security/NoSuchAlgorithmException;
    const-string v12, "MountService"

    const-string v13, "Could not load PBKDF2 algorithm"

    invoke-static {v12, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3302
    const/16 v12, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_0

    .line 3304
    .end local v4           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    .line 3305
    .local v4, e:Ljava/security/spec/InvalidKeySpecException;
    const-string v12, "MountService"

    const-string v13, "Invalid key spec when loading PBKDF2 algorithm"

    invoke-static {v12, v13, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3306
    const/16 v12, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_0

    .line 3316
    .end local v4           #e:Ljava/security/spec/InvalidKeySpecException;
    .restart local v2       #cmd:Ljava/lang/String;
    .restart local v6       #hashedKey:Ljava/lang/String;
    .restart local v11       #rc:I
    :catch_2
    move-exception v4

    .line 3317
    .local v4, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v4}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v3

    .line 3318
    .local v3, code:I
    const/16 v12, 0x195

    if-eq v3, v12, :cond_2

    .line 3319
    const/4 v11, -0x1

    goto/16 :goto_2

    .line 3329
    .end local v3           #code:I
    .end local v4           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v12

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v12

    .line 3333
    :cond_4
    const-string v12, "MountService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t mount OBB file: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    const/16 v12, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/server/MountService$MountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3347
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "MountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3348
    const-string v1, "filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3349
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3350
    const-string v1, ",callerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3351
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v1, v1, Lcom/android/server/MountService$ObbState;->callerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3352
    const-string v1, ",token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3353
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3354
    const-string v1, ",binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3355
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3356
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3353
    :cond_0
    const-string v1, "NULL"

    goto :goto_0

    .line 3355
    :cond_1
    const-string v1, "null"

    goto :goto_1
.end method
