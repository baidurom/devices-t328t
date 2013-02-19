.class Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;
.super Ljava/lang/Object;
.source "ContactsUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/ContactsUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleSocialNetworkLargePhotoHelper"
.end annotation


# static fields
.field private static final CONTACTSUTITLITY_HTTP_DEFAULT_AGENT:Ljava/lang/String; = "ContactsUtility/1.00"

.field private static final MSG_CHECK_DOWNLOAD_ORIGINAL_FACEBOOK_LARGE_PHOTO:I = 0x38

.field static final MSG_CHECK_DOWNLOAD_SET:I = 0x33

.field static final MSG_CHECK_DOWNLOAD_SET_END:I = 0x37

.field private static final MSG_DELAY_1000:I = 0x3e8

.field private static final MSG_DELAY_RETRY:I = 0xea60

.field private static final MSG_DOWNLOAD_INSERT:I = 0x35

.field private static final MSG_DOWNLOAD_ORIGINAL_FACEBOOK_LARGE_PHOTO:I = 0x39

.field private static final MSG_DOWNLOAD_UPDATE:I = 0x34

.field static final MSG_END_HANDLER:I = 0x32

.field static final MSG_END_HANDLER_DELAY:I = 0x2710

.field private static final MSG_FAVORITE_CHANGE:I = 0x36

.field private static final MSG_FAVORITE_CHANGE_DELAY:I = 0x1388

.field private static final MSG_RE_DOWNLOAD_ORIGINAL_FACEBOOK_LARGE_PHOTO:I = 0x3a

.field static MessageHandler:Landroid/os/Handler; = null

.field private static final RETRY_TIMES:I = 0x3

.field private static mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field static mObjectLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2249
    sput-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    .line 2250
    sput-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2251
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    .line 2252
    sput-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2229
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;JLjava/lang/String;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 2229
    invoke-static/range {p0 .. p6}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadSocialNetworkLargePhoto(Landroid/content/Context;JLjava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic access$200(JLandroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2229
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadOriginalFacebookLargePhoto(JLandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Landroid/net/http/AndroidHttpClient;
    .locals 1

    .prologue
    .line 2229
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2229
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$600(JLjava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2229
    invoke-static {p0, p1, p2, p3}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 2229
    invoke-static/range {p0 .. p5}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800()V
    .locals 0

    .prologue
    .line 2229
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->endHandler()V

    return-void
.end method

.method private static broadcastFavoriteChangeIntent(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "lContactId"

    .prologue
    .line 2629
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    if-nez p0, :cond_1

    .line 2645
    :cond_0
    :goto_0
    return-void

    .line 2631
    :cond_1
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2632
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2633
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v4, 0x32

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2635
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2636
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x36

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2637
    long-to-int v2, p1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2638
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2639
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2641
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2642
    .local v1, msgEnd:Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2643
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2644
    monitor-exit v3

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "context"

    .prologue
    .line 2687
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 2724
    :cond_0
    :goto_0
    return-void

    .line 2688
    :cond_1
    const-string v0, "com.facebook.auth.login"

    const-string v1, "SupportContact"

    new-instance v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;

    invoke-direct {v2, p3, p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    invoke-static {p3, v0, v1, v2}, Lcom/htc/opensense/social/SocialServiceManager;->connectTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;)Z

    goto :goto_0
.end method

.method private static doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 21
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "context"
    .parameter "largeAvatarUrl"
    .parameter "retryTimes"

    .prologue
    .line 2727
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p0

    if-gez v2, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p3, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2863
    :cond_0
    :goto_0
    return-void

    .line 2728
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "raw_contact_id = ? AND mimetype = ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x1

    const-string v20, "vnd.android.cursor.item/photo"

    aput-object v20, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2734
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 2736
    const/16 v18, 0x0

    .line 2737
    .local v18, retry:Z
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 2738
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2739
    const-string v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 2740
    .local v16, photoDataId:J
    const-string v2, "data9"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2744
    .local v15, oldLargeUrl:Ljava/lang/String;
    const/4 v14, 0x0

    .line 2745
    .local v14, needDownload:Z
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p0

    if-gez v2, :cond_3

    .line 2746
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v16

    if-nez v2, :cond_6

    .line 2747
    const/4 v14, 0x1

    .line 2753
    :cond_3
    :goto_2
    if-eqz v14, :cond_2

    .line 2754
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote4(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2755
    .local v8, bmPhoto:Landroid/graphics/Bitmap;
    if-nez v8, :cond_7

    .line 2756
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDownloadOriginalFacebookLargePhoto getFromRemote3 NULL! largeAvatarUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    if-lez p5, :cond_4

    .line 2758
    const/16 v18, 0x1

    .line 2760
    :cond_4
    if-nez v18, :cond_5

    .line 2761
    const-string v2, "ContactsUtility"

    const-string v3, "doDownloadOriginalFacebookLargePhoto getFromRemote3 NULL! use default photo!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    sget v2, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v3, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/htc/util/contacts/ContactsUtility;->getDefaultPeoplePhoto(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2763
    if-nez v8, :cond_5

    .line 2764
    const-string v2, "ContactsUtility"

    const-string v3, "doDownloadOriginalFacebookLargePhoto getFromRemote3 NULL! use default photo! still NULL!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    :cond_5
    :goto_3
    if-eqz v8, :cond_2

    .line 2771
    sget v2, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v3, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    invoke-static {v8, v2, v3}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2773
    #calls: Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;)[B
    invoke-static {v8}, Lcom/htc/util/contacts/ContactsUtility;->access$900(Landroid/graphics/Bitmap;)[B

    move-result-object v10

    .line 2774
    .local v10, byteArrayPhoto:[B
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 2775
    const/4 v8, 0x0

    .line 2776
    if-eqz v10, :cond_2

    .line 2779
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p0

    if-gez v2, :cond_2

    .line 2780
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 2781
    .local v19, valuesDataPhoto:Landroid/content/ContentValues;
    const-string v2, "data15"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2782
    const-string v2, "data8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2783
    const-string v2, "data9"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v16

    if-nez v2, :cond_8

    .line 2787
    const-string v2, "raw_contact_id"

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2788
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 2748
    .end local v8           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v10           #byteArrayPhoto:[B
    .end local v19           #valuesDataPhoto:Landroid/content/ContentValues;
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v16

    if-gez v2, :cond_3

    move-object/from16 v0, p4

    invoke-static {v0, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2749
    const/4 v14, 0x1

    goto/16 :goto_2

    .line 2768
    .restart local v8       #bmPhoto:Landroid/graphics/Bitmap;
    :cond_7
    const/16 v18, 0x0

    goto :goto_3

    .line 2790
    .restart local v10       #byteArrayPhoto:[B
    .restart local v19       #valuesDataPhoto:Landroid/content/ContentValues;
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v2, v16

    if-gez v2, :cond_2

    move-object/from16 v0, p4

    invoke-static {v0, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2792
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2800
    .end local v8           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v10           #byteArrayPhoto:[B
    .end local v14           #needDownload:Z
    .end local v15           #oldLargeUrl:Ljava/lang/String;
    .end local v16           #photoDataId:J
    .end local v19           #valuesDataPhoto:Landroid/content/ContentValues;
    :cond_9
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote4(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2801
    .restart local v8       #bmPhoto:Landroid/graphics/Bitmap;
    if-nez v8, :cond_b

    .line 2802
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doDownloadOriginalFacebookLargePhoto getFromRemote4 NULL! largeAvatarUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    if-lez p5, :cond_a

    .line 2804
    const/16 v18, 0x1

    .line 2806
    :cond_a
    if-nez v18, :cond_b

    .line 2807
    const-string v2, "ContactsUtility"

    const-string v3, "doDownloadOriginalFacebookLargePhoto getFromRemote4 NULL! use default photo!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    sget v2, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v3, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lcom/htc/util/contacts/ContactsUtility;->getDefaultPeoplePhoto(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2809
    if-nez v8, :cond_b

    .line 2810
    const-string v2, "ContactsUtility"

    const-string v3, "doDownloadOriginalFacebookLargePhoto getFromRemote4 NULL! use default photo! still NULL!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    :cond_b
    if-eqz v8, :cond_c

    .line 2815
    sget v2, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v3, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    invoke-static {v8, v2, v3}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 2817
    #calls: Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;)[B
    invoke-static {v8}, Lcom/htc/util/contacts/ContactsUtility;->access$900(Landroid/graphics/Bitmap;)[B

    move-result-object v10

    .line 2818
    .restart local v10       #byteArrayPhoto:[B
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 2819
    const/4 v8, 0x0

    .line 2820
    if-eqz v10, :cond_c

    .line 2823
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p0

    if-gez v2, :cond_c

    .line 2824
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 2825
    .restart local v19       #valuesDataPhoto:Landroid/content/ContentValues;
    const-string v2, "data15"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2826
    const-string v2, "data8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2827
    const-string v2, "data9"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2830
    const-string v2, "raw_contact_id"

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2831
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2837
    .end local v8           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v10           #byteArrayPhoto:[B
    .end local v19           #valuesDataPhoto:Landroid/content/ContentValues;
    :cond_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2838
    const/4 v11, 0x0

    .line 2840
    if-lez p5, :cond_0

    if-eqz v18, :cond_0

    .line 2841
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2842
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2843
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v4, 0x32

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2845
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    .line 2846
    .local v12, msg:Landroid/os/Message;
    const/16 v2, 0x3a

    iput v2, v12, Landroid/os/Message;->what:I

    .line 2847
    move-object/from16 v0, p3

    iput-object v0, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2848
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 2849
    .local v9, bundle:Landroid/os/Bundle;
    const-string v2, "_id"

    move-wide/from16 v0, p0

    invoke-virtual {v9, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2850
    const-string v2, "sourceid"

    move-object/from16 v0, p2

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    const-string v2, "LargeUrl"

    move-object/from16 v0, p4

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2852
    const-string v2, "RetryTimes"

    move/from16 v0, p5

    int-to-long v4, v0

    invoke-virtual {v9, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2853
    invoke-virtual {v12, v9}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2855
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v12, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2856
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v13

    .line 2857
    .local v13, msgEnd:Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v13, Landroid/os/Message;->what:I

    .line 2858
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x11170

    invoke-virtual {v2, v13, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2859
    monitor-exit v3

    goto/16 :goto_0

    .end local v9           #bundle:Landroid/os/Bundle;
    .end local v12           #msg:Landroid/os/Message;
    .end local v13           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static downloadOriginalFacebookLargePhoto(JLandroid/content/Context;)V
    .locals 15
    .parameter "contactId"
    .parameter "context"

    .prologue
    .line 2648
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p0

    if-gez v1, :cond_0

    if-nez p2, :cond_1

    .line 2684
    :cond_0
    :goto_0
    return-void

    .line 2649
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "sourceid"

    aput-object v5, v3, v4

    const-string v4, "contact_id = ? AND account_type = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v6

    const/4 v6, 0x1

    const-string v14, "com.facebook.auth.login"

    aput-object v14, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2655
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 2656
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2657
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2658
    .local v11, rawContactId:J
    const-string v1, "sourceid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2661
    .local v13, sourceId:Ljava/lang/String;
    const-wide/16 v1, 0x0

    cmp-long v1, v1, v11

    if-gez v1, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2662
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2663
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2664
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2666
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 2667
    .local v9, msg:Landroid/os/Message;
    const/16 v1, 0x38

    iput v1, v9, Landroid/os/Message;->what:I

    .line 2668
    move-object/from16 v0, p2

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2669
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2670
    .local v7, bundle:Landroid/os/Bundle;
    const-string v1, "_id"

    invoke-virtual {v7, v1, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2671
    const-string v1, "sourceid"

    invoke-virtual {v7, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    invoke-virtual {v9, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2673
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2675
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 2676
    .local v10, msgEnd:Landroid/os/Message;
    const/16 v1, 0x32

    iput v1, v10, Landroid/os/Message;->what:I

    .line 2677
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v10, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2678
    monitor-exit v2

    goto :goto_1

    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2681
    .end local v11           #rawContactId:J
    .end local v13           #sourceId:Ljava/lang/String;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2682
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private static downloadSocialNetworkLargePhoto(Landroid/content/Context;JLjava/lang/String;ZJ)V
    .locals 7
    .parameter "context"
    .parameter "lRawContactId"
    .parameter "sLargeAvatarUrl"
    .parameter "bUpdate"
    .parameter "lDataId"

    .prologue
    .line 2600
    const-wide/16 v3, 0x0

    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    if-nez p0, :cond_1

    .line 2626
    :cond_0
    :goto_0
    return-void

    .line 2602
    :cond_1
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2603
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2604
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v5, 0x32

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2606
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2607
    .local v1, msg:Landroid/os/Message;
    if-eqz p4, :cond_3

    .line 2608
    const/16 v3, 0x34

    iput v3, v1, Landroid/os/Message;->what:I

    .line 2612
    :goto_1
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2613
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2614
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2615
    const-string v3, "large_avatar_url"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    if-eqz p4, :cond_2

    const-wide/16 v5, -0x1

    cmp-long v3, v5, p5

    if-gez v3, :cond_2

    .line 2617
    const-string v3, "data_id"

    invoke-virtual {v0, v3, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2619
    :cond_2
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2620
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2622
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 2623
    .local v2, msgEnd:Landroid/os/Message;
    const/16 v3, 0x32

    iput v3, v2, Landroid/os/Message;->what:I

    .line 2624
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2625
    monitor-exit v4

    goto :goto_0

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2610
    .restart local v1       #msg:Landroid/os/Message;
    :cond_3
    const/16 v3, 0x35

    :try_start_1
    iput v3, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static endHandler()V
    .locals 5

    .prologue
    .line 2271
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2272
    :try_start_0
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2273
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x39

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2282
    :cond_0
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2283
    monitor-exit v1

    .line 2297
    :goto_0
    return-void

    .line 2286
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    .line 2287
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2288
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2290
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_2

    .line 2291
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2292
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 2296
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static newMessageHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 2309
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$1;

    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$1;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method static startHandler()V
    .locals 3

    .prologue
    .line 2261
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2262
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2263
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2264
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->newMessageHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    .line 2265
    const-string v0, "ContactsUtility/1.00"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 2268
    :cond_0
    return-void
.end method
