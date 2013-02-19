.class final Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$1;
.super Landroid/os/Handler;
.source "ContactsUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->newMessageHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2309
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 48
    .parameter "msg"

    .prologue
    .line 2311
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2595
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2315
    :pswitch_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    int-to-long v0, v3

    move-wide/from16 v35, v0

    .line 2316
    .local v35, lContactId:J
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    .line 2317
    .local v15, context:Landroid/content/Context;
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v35

    if-gez v3, :cond_0

    if-eqz v15, :cond_0

    .line 2320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.contacts/contacts/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v35

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/simpleSocialNetworkdata"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2321
    .local v4, uri:Landroid/net/Uri;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .line 2322
    .local v45, sbSelection:Ljava/lang/StringBuilder;
    const-string v3, "account_type = \'com.htc.socialnetwork.facebook\'"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2323
    const-string v3, " AND "

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2324
    const-string v3, "( "

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2325
    const-string v3, "mimetype = \'vnd.android.cursor.item/photo\'"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2326
    const-string v3, " OR "

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2327
    const-string v3, "mimetype = \'com.htc.socialnetwork.facebook/largeavatar\'"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2328
    const-string v3, " )"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2329
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 2330
    .local v31, c:Landroid/database/Cursor;
    if-eqz v31, :cond_d

    .line 2332
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_c

    .line 2333
    new-instance v42, Ljava/util/HashSet;

    invoke-direct/range {v42 .. v42}, Ljava/util/HashSet;-><init>()V

    .line 2334
    .local v42, rawContactIdset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2335
    const-string v3, "raw_contact_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 2336
    .local v37, lRawContactId:J
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v37

    if-gez v3, :cond_1

    .line 2338
    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2342
    .end local v37           #lRawContactId:J
    :cond_2
    invoke-virtual/range {v42 .. v42}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    .line 2344
    .local v23, LrawContactId:Ljava/lang/Long;
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2345
    const/4 v8, 0x0

    .line 2346
    .local v8, sLargeAvatarUrl:Ljava/lang/String;
    const/16 v24, 0x0

    .line 2347
    .local v24, bHasPhotoData:Z
    const/16 v26, 0x0

    .line 2348
    .local v26, bIsSocialNetworkPhotoData:Z
    const/16 v25, 0x1

    .line 2349
    .local v25, bIsSocialNetworkLargePhotoData:Z
    const-wide/16 v10, -0x1

    .line 2352
    .local v10, lDataId:J
    :cond_4
    const-string v3, "raw_contact_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 2353
    .restart local v37       #lRawContactId:J
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v37

    if-nez v3, :cond_5

    .line 2354
    const-string v3, "mimetype"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 2355
    .local v44, sMimetype:Ljava/lang/String;
    const-string v3, "com.htc.socialnetwork.facebook/largeavatar"

    move-object/from16 v0, v44

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2356
    const-string v3, "data1"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2380
    .end local v44           #sMimetype:Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2382
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2383
    if-nez v24, :cond_b

    .line 2385
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object v5, v15

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadSocialNetworkLargePhoto(Landroid/content/Context;JLjava/lang/String;ZJ)V
    invoke-static/range {v5 .. v11}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$100(Landroid/content/Context;JLjava/lang/String;ZJ)V

    goto :goto_2

    .line 2358
    .restart local v44       #sMimetype:Ljava/lang/String;
    :cond_6
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v44

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2359
    const/16 v24, 0x1

    .line 2360
    const-wide/16 v5, 0x0

    const-string v3, "data7"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v3, v5, v12

    if-eqz v3, :cond_7

    const-string v3, "data7"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2363
    :cond_7
    const/16 v26, 0x0

    .line 2368
    :goto_4
    const-wide/16 v5, 0x0

    const-string v3, "data8"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v3, v5, v12

    if-eqz v3, :cond_8

    const-string v3, "data8"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2371
    :cond_8
    const/16 v25, 0x0

    .line 2376
    :goto_5
    const-string v3, "data_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v31

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    goto :goto_3

    .line 2365
    :cond_9
    const/16 v26, 0x1

    goto :goto_4

    .line 2373
    :cond_a
    const/16 v25, 0x1

    goto :goto_5

    .line 2386
    .end local v44           #sMimetype:Ljava/lang/String;
    :cond_b
    if-eqz v24, :cond_3

    if-eqz v26, :cond_3

    if-nez v25, :cond_3

    .line 2388
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v9, 0x1

    move-object v5, v15

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadSocialNetworkLargePhoto(Landroid/content/Context;JLjava/lang/String;ZJ)V
    invoke-static/range {v5 .. v11}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$100(Landroid/content/Context;JLjava/lang/String;ZJ)V

    goto/16 :goto_2

    .line 2393
    .end local v8           #sLargeAvatarUrl:Ljava/lang/String;
    .end local v10           #lDataId:J
    .end local v23           #LrawContactId:Ljava/lang/Long;
    .end local v24           #bHasPhotoData:Z
    .end local v25           #bIsSocialNetworkLargePhotoData:Z
    .end local v26           #bIsSocialNetworkPhotoData:Z
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v37           #lRawContactId:J
    .end local v42           #rawContactIdset:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_c
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 2394
    const/16 v31, 0x0

    .line 2397
    :cond_d
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isFaceBookPhoneProject()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2398
    move-wide/from16 v0, v35

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadOriginalFacebookLargePhoto(JLandroid/content/Context;)V
    invoke-static {v0, v1, v15}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$200(JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 2412
    .end local v4           #uri:Landroid/net/Uri;
    .end local v15           #context:Landroid/content/Context;
    .end local v31           #c:Landroid/database/Cursor;
    .end local v35           #lContactId:J
    .end local v45           #sbSelection:Ljava/lang/StringBuilder;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    .line 2413
    .restart local v15       #context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    .line 2414
    .local v28, bundle:Landroid/os/Bundle;
    if-eqz v15, :cond_0

    if-eqz v28, :cond_0

    .line 2415
    const-string v3, "raw_contact_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v37

    .line 2416
    .restart local v37       #lRawContactId:J
    const-string v3, "large_avatar_url"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2417
    .restart local v8       #sLargeAvatarUrl:Ljava/lang/String;
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v37

    if-gez v3, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2419
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$300()Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote4(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2420
    .local v27, bmPhoto:Landroid/graphics/Bitmap;
    if-nez v27, :cond_e

    .line 2421
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_DOWNLOAD_UPDATE(INSERT) getFromRemote3 NULL! sLargeAvatarUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    const-string v3, "ContactsUtility"

    const-string v5, "MSG_DOWNLOAD_UPDATE(INSERT) getFromRemote3 NULL! use default photo!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    sget v3, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v5, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    invoke-static {v15, v3, v5}, Lcom/htc/util/contacts/ContactsUtility;->getDefaultPeoplePhoto(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2424
    if-nez v27, :cond_e

    .line 2425
    const-string v3, "ContactsUtility"

    const-string v5, "MSG_DOWNLOAD_UPDATE(INSERT) getFromRemote3 NULL! use default photo! still NULL!!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    :cond_e
    if-eqz v27, :cond_0

    .line 2432
    sget v3, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v5, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    move-object/from16 v0, v27

    invoke-static {v0, v3, v5}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2442
    if-eqz v27, :cond_0

    .line 2447
    sget v3, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_50:I

    move-object/from16 v0, v27

    #calls: Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;I)[B
    invoke-static {v0, v3}, Lcom/htc/util/contacts/ContactsUtility;->access$400(Landroid/graphics/Bitmap;I)[B

    move-result-object v30

    .line 2448
    .local v30, byteArrayPhoto:[B
    if-eqz v30, :cond_0

    .line 2450
    new-instance v47, Landroid/content/ContentValues;

    invoke-direct/range {v47 .. v47}, Landroid/content/ContentValues;-><init>()V

    .line 2451
    .local v47, valuesDataPhoto:Landroid/content/ContentValues;
    const-string v3, "raw_contact_id"

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2452
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    const-string v3, "data15"

    move-object/from16 v0, v47

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2468
    const-string v3, "data7"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2469
    const-string v3, "data8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2470
    const-string v3, "data9"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    const/16 v3, 0x34

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_10

    .line 2473
    const-string v3, "data_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 2474
    .restart local v10       #lDataId:J
    const-wide/16 v5, -0x1

    cmp-long v3, v5, v10

    if-gez v3, :cond_f

    .line 2477
    :try_start_0
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v3, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2511
    .end local v10           #lDataId:J
    :cond_f
    :goto_6
    move-wide/from16 v0, v37

    invoke-static {v15, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getContactId(Landroid/content/Context;J)J

    move-result-wide v35

    .line 2512
    .restart local v35       #lContactId:J
    move-wide/from16 v0, v35

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V
    invoke-static {v15, v0, v1}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$500(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 2478
    .end local v35           #lContactId:J
    .restart local v10       #lDataId:J
    :catch_0
    move-exception v32

    .line 2479
    .local v32, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update sn photo fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2480
    .end local v32           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v32

    .line 2481
    .local v32, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update sn photo fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2484
    .end local v10           #lDataId:J
    .end local v32           #e:Landroid/database/sqlite/SQLiteException;
    :cond_10
    const/16 v3, 0x35

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    if-ne v3, v5, :cond_f

    .line 2489
    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 2490
    .local v29, bundleData:Landroid/os/Bundle;
    move-wide/from16 v0, v37

    move-object/from16 v2, v29

    invoke-static {v15, v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility;->isRawContactHasPhoto(Landroid/content/Context;JLandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2491
    const-string v3, "data_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 2494
    .restart local v10       #lDataId:J
    :try_start_1
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v3, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_6

    .line 2495
    :catch_2
    move-exception v32

    .line 2496
    .local v32, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update sn photo fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2497
    .end local v32           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_3
    move-exception v32

    .line 2498
    .local v32, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update sn photo fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2503
    .end local v10           #lDataId:J
    .end local v32           #e:Landroid/database/sqlite/SQLiteException;
    :cond_11
    :try_start_2
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v47

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_6

    .line 2504
    :catch_4
    move-exception v32

    .line 2505
    .local v32, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert sn photo fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2506
    .end local v32           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_5
    move-exception v32

    .line 2507
    .local v32, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert sn photo fail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2520
    .end local v8           #sLargeAvatarUrl:Ljava/lang/String;
    .end local v15           #context:Landroid/content/Context;
    .end local v27           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v28           #bundle:Landroid/os/Bundle;
    .end local v29           #bundleData:Landroid/os/Bundle;
    .end local v30           #byteArrayPhoto:[B
    .end local v32           #e:Landroid/database/sqlite/SQLiteException;
    .end local v37           #lRawContactId:J
    .end local v47           #valuesDataPhoto:Landroid/content/ContentValues;
    :pswitch_3
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    int-to-long v0, v3

    move-wide/from16 v35, v0

    .line 2521
    .restart local v35       #lContactId:J
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    .line 2522
    .restart local v15       #context:Landroid/content/Context;
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v35

    if-gez v3, :cond_0

    if-eqz v15, :cond_0

    .line 2524
    new-instance v34, Landroid/content/Intent;

    const-string v3, "anddroid.intent.action.FAVORITE_CHANGE"

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2525
    .local v34, intent:Landroid/content/Intent;
    const-string v3, "contact_id"

    move-object/from16 v0, v34

    move-wide/from16 v1, v35

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2526
    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2532
    .end local v15           #context:Landroid/content/Context;
    .end local v34           #intent:Landroid/content/Intent;
    .end local v35           #lContactId:J
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    .line 2533
    .restart local v15       #context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    .line 2534
    .restart local v28       #bundle:Landroid/os/Bundle;
    if-eqz v15, :cond_0

    if-eqz v28, :cond_0

    .line 2535
    const-string v3, "_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 2536
    .local v17, rawContactId:J
    const-string v3, "sourceid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2537
    .local v14, sourceId:Ljava/lang/String;
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v17

    if-gez v3, :cond_0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2538
    move-wide/from16 v0, v17

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;)V
    invoke-static {v0, v1, v14, v15}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$600(JLjava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2544
    .end local v14           #sourceId:Ljava/lang/String;
    .end local v15           #context:Landroid/content/Context;
    .end local v17           #rawContactId:J
    .end local v28           #bundle:Landroid/os/Bundle;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    .line 2545
    .restart local v15       #context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    .line 2546
    .restart local v28       #bundle:Landroid/os/Bundle;
    if-eqz v15, :cond_0

    if-eqz v28, :cond_0

    .line 2548
    const-string v3, "SocialServiceManager"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v39

    check-cast v39, Landroid/os/Message;

    .line 2549
    .local v39, objMsg:Landroid/os/Message;
    if-eqz v39, :cond_0

    .line 2550
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/htc/opensense/social/SocialServiceManager;

    .line 2551
    .local v46, serviceManager:Lcom/htc/opensense/social/SocialServiceManager;
    if-eqz v46, :cond_0

    .line 2552
    const-string v3, "sourceid"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2553
    .restart local v14       #sourceId:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2555
    const/4 v3, 0x1

    :try_start_3
    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v14, v3, v5

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Lcom/htc/opensense/social/SocialServiceManager;->getPersonOps([Ljava/lang/String;)Ljava/util/List;

    move-result-object v40

    .line 2556
    .local v40, people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    const/16 v16, 0x0

    .line 2557
    .local v16, largeBuddyIconUrl:Ljava/lang/String;
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .restart local v33       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/htc/opensense/social/PersonOp;

    .line 2558
    .local v41, person:Lcom/htc/opensense/social/PersonOp;
    if-eqz v41, :cond_12

    invoke-virtual/range {v41 .. v41}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 2559
    invoke-virtual/range {v41 .. v41}, Lcom/htc/opensense/social/PersonOp;->getData()Lcom/htc/opensense/social/data/Person;

    move-result-object v3

    iget-object v0, v3, Lcom/htc/opensense/social/data/Person;->largeBuddyIconUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2561
    :cond_12
    const-string v3, "ContactsUtility"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "downloadOriginalFacebookLargePhoto Large avatar:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_7

    .line 2566
    .end local v16           #largeBuddyIconUrl:Ljava/lang/String;
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v40           #people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    .end local v41           #person:Lcom/htc/opensense/social/PersonOp;
    :catch_6
    move-exception v32

    .line 2567
    .local v32, e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    :try_start_4
    invoke-virtual/range {v32 .. v32}, Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;->printStackTrace()V

    .line 2568
    const-string v3, "ContactsUtility"

    const-string v5, "error"

    move-object/from16 v0, v32

    invoke-static {v3, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2570
    if-eqz v46, :cond_0

    .line 2571
    invoke-virtual/range {v46 .. v46}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect()V

    goto/16 :goto_0

    .line 2563
    .end local v32           #e:Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException;
    .restart local v16       #largeBuddyIconUrl:Ljava/lang/String;
    .restart local v33       #i$:Ljava/util/Iterator;
    .restart local v40       #people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :cond_13
    :try_start_5
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 2564
    const-string v3, "_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const/16 v17, 0x3

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static/range {v12 .. v17}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$700(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/htc/opensense/social/SocialNetworkError$SocialNetworkException; {:try_start_5 .. :try_end_5} :catch_6

    .line 2570
    :cond_14
    if-eqz v46, :cond_0

    .line 2571
    invoke-virtual/range {v46 .. v46}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect()V

    goto/16 :goto_0

    .line 2570
    .end local v16           #largeBuddyIconUrl:Ljava/lang/String;
    .end local v33           #i$:Ljava/util/Iterator;
    .end local v40           #people:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense/social/PersonOp;>;"
    :catchall_0
    move-exception v3

    if-eqz v46, :cond_15

    .line 2571
    invoke-virtual/range {v46 .. v46}, Lcom/htc/opensense/social/SocialServiceManager;->disconnect()V

    :cond_15
    throw v3

    .line 2579
    .end local v14           #sourceId:Ljava/lang/String;
    .end local v15           #context:Landroid/content/Context;
    .end local v28           #bundle:Landroid/os/Bundle;
    .end local v39           #objMsg:Landroid/os/Message;
    .end local v46           #serviceManager:Lcom/htc/opensense/social/SocialServiceManager;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    .line 2580
    .restart local v15       #context:Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v28

    .line 2581
    .restart local v28       #bundle:Landroid/os/Bundle;
    if-eqz v15, :cond_0

    if-eqz v28, :cond_0

    .line 2582
    const-string v3, "_id"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 2583
    .restart local v17       #rawContactId:J
    const-string v3, "sourceid"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2584
    .restart local v14       #sourceId:Ljava/lang/String;
    const-string v3, "LargeUrl"

    const-string v5, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2585
    .local v21, largeAvatarUrl:Ljava/lang/String;
    const-string v3, "RetryTimes"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    long-to-int v0, v5

    move/from16 v43, v0

    .line 2586
    .local v43, retryTimes:I
    const-wide/16 v5, 0x0

    cmp-long v3, v5, v17

    if-gez v3, :cond_0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-lez v43, :cond_0

    .line 2587
    add-int/lit8 v22, v43, -0x1

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static/range {v17 .. v22}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$700(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2592
    .end local v14           #sourceId:Ljava/lang/String;
    .end local v15           #context:Landroid/content/Context;
    .end local v17           #rawContactId:J
    .end local v21           #largeAvatarUrl:Ljava/lang/String;
    .end local v28           #bundle:Landroid/os/Bundle;
    .end local v43           #retryTimes:I
    :pswitch_7
    #calls: Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->endHandler()V
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->access$800()V

    goto/16 :goto_0

    .line 2311
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
