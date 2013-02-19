.class public Landroid/provider/HtcUnionContact;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/HtcUnionContact$SocialNetworkColumns;,
        Landroid/provider/HtcUnionContact$SpeedDial;,
        Landroid/provider/HtcUnionContact$SimpleContactInfo;,
        Landroid/provider/HtcUnionContact$HtcArrayAdapter;,
        Landroid/provider/HtcUnionContact$ContactUtils;,
        Landroid/provider/HtcUnionContact$Group;,
        Landroid/provider/HtcUnionContact$Thumbnails;,
        Landroid/provider/HtcUnionContact$ContactMethodInfo;,
        Landroid/provider/HtcUnionContact$PhoneInfo;,
        Landroid/provider/HtcUnionContact$PeopleInfo;,
        Landroid/provider/HtcUnionContact$MyContactCard;,
        Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;,
        Landroid/provider/HtcUnionContact$SimContacts;,
        Landroid/provider/HtcUnionContact$AllContacts;,
        Landroid/provider/HtcUnionContact$SmartDialing;,
        Landroid/provider/HtcUnionContact$Intents;,
        Landroid/provider/HtcUnionContact$Config;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "contacts"

.field public static final CALL_LOG_BASE:I = 0x1e

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final SIM_TYPE_BASE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "HtcUnionContact"

.field public static final UnreadEmailCountProjection:[Ljava/lang/String;

.field public static final UnreadMessageCountProjection:[Ljava/lang/String;

.field public static final idProjection:[Ljava/lang/String;

.field private static openLog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    const-string v0, "content://contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcUnionContact;->CONTENT_URI:Landroid/net/Uri;

    .line 89
    sput-boolean v2, Landroid/provider/HtcUnionContact;->openLog:Z

    .line 91
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/HtcUnionContact;->idProjection:[Ljava/lang/String;

    .line 93
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/HtcUnionContact;->UnreadEmailCountProjection:[Ljava/lang/String;

    .line 95
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "pureNumber"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/HtcUnionContact;->UnreadMessageCountProjection:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsSIMContactUri(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;
        }
    .end annotation

    .prologue
    .line 649
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 650
    .local v2, uri_str:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v3, "content"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 652
    :cond_0
    new-instance v3, Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;

    invoke-direct {v3}, Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;-><init>()V

    throw v3

    .line 655
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 656
    const/4 v0, 0x0

    .line 658
    .local v0, result:Z
    const-string v3, "content://contacts/sim"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/provider/HtcUnionContact$SimContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 659
    :cond_2
    const/4 v0, 0x1

    .line 668
    :cond_3
    :goto_0
    return v0

    .line 661
    :cond_4
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 662
    const/4 v0, 0x0

    goto :goto_0

    .line 664
    :cond_5
    const-string v3, "content://contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 665
    new-instance v3, Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknow uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/provider/HtcUnionContact$UnknowContactQueryURIException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Landroid/provider/HtcUnionContact;->openLog:Z

    return v0
.end method

.method public static batchUpdateStarredContact(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .parameter "resolver"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 993
    .local p1, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 995
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "_id   =  %d  "

    .line 996
    .local v8, selectionFormat:Ljava/lang/String;
    const/4 v7, 0x0

    .line 997
    .local v7, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 998
    .local v5, operation:Landroid/content/ContentProviderOperation;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .local v0, batchList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p1, :cond_0

    .line 1000
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1001
    .local v4, id:I
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1002
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1003
    const-string/jumbo v9, "starred"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1004
    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1005
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 1006
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1010
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:I
    :cond_0
    if-eqz p2, :cond_1

    .line 1011
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1012
    .restart local v4       #id:I
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1013
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1014
    const-string/jumbo v9, "starred"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1015
    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1016
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 1017
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1021
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #id:I
    :cond_1
    const/4 v6, 0x0

    .line 1023
    .local v6, result:[Landroid/content/ContentProviderResult;
    :try_start_0
    const-string v9, "com.android.contacts"

    invoke-virtual {p0, v9, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 1030
    :goto_2
    return-object v6

    .line 1024
    :catch_0
    move-exception v2

    .line 1025
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "HtcUnionContact"

    const-string v10, "batchUpdateStarredContact"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1026
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1027
    .local v2, e:Landroid/content/OperationApplicationException;
    const-string v9, "HtcUnionContact"

    const-string v10, "batchUpdateStarredContact"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getContactByMail(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .parameter "resolver"
    .parameter "mailAddress"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 958
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "contact_id"

    aput-object v0, v2, v5

    .line 962
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mimetype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  LIKE  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 968
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 969
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v6, -0x1

    .line 970
    .local v6, contactId:J
    const/4 v10, 0x0

    .line 971
    .local v10, uri:Landroid/net/Uri;
    if-eqz v8, :cond_1

    .line 973
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 975
    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 976
    invoke-static {v10, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 982
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 986
    :cond_1
    return-object v10

    .line 978
    :catch_0
    move-exception v9

    .line 979
    .local v9, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_0

    .line 982
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static final getDisplayExchangeMailLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "context"
    .parameter "type"
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 854
    if-nez p1, :cond_0

    .line 873
    .end local p2
    :goto_0
    return-object p2

    .line 856
    .restart local p2
    :cond_0
    move v7, p1

    .line 857
    .local v7, type_value:I
    const/4 v1, 0x0

    .line 858
    .local v1, labelArray:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 859
    .local v2, labelChars:[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 861
    .local v6, result:Ljava/lang/String;
    :try_start_0
    const-string v5, "exchange_mailTypes"

    .line 863
    .local v5, resourceName:Ljava/lang/String;
    rem-int/lit16 v7, v7, 0x3e8

    .line 865
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.htc"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 866
    .local v3, r:Landroid/content/res/Resources;
    const-string v8, "array"

    const-string v9, "com.htc"

    invoke-virtual {v3, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 867
    .local v4, resid:I
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 868
    if-lez v7, :cond_1

    add-int/lit8 v0, v7, -0x1

    .line 869
    .local v0, index:I
    :goto_1
    aget-object v6, v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #index:I
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #resid:I
    .end local v5           #resourceName:Ljava/lang/String;
    :goto_2
    move-object p2, v6

    .line 873
    goto :goto_0

    .line 868
    .restart local v3       #r:Landroid/content/res/Resources;
    .restart local v4       #resid:I
    .restart local v5       #resourceName:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 871
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #resid:I
    .end local v5           #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public static final getDisplayHtcPhoneLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "context"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 781
    move v7, p1

    .line 782
    .local v7, type_value:I
    const/4 v1, 0x0

    .line 783
    .local v1, labelArray:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 784
    .local v2, labelChars:[Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 788
    .local v6, result:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 803
    .end local p2
    :goto_0
    return-object p2

    .line 793
    .restart local p2
    :cond_0
    :try_start_0
    rem-int/lit16 v7, v7, 0x3e8

    .line 795
    const-string/jumbo v5, "htc_phoneTypes"

    .line 796
    .local v5, resourceName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.htc"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 797
    .local v3, r:Landroid/content/res/Resources;
    const-string v8, "array"

    const-string v9, "com.htc"

    invoke-virtual {v3, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 798
    .local v4, resid:I
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 799
    if-lez v7, :cond_1

    add-int/lit8 v0, v7, -0x1

    .line 800
    .local v0, index:I
    :goto_1
    aget-object v6, v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #index:I
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #resid:I
    .end local v5           #resourceName:Ljava/lang/String;
    :goto_2
    move-object p2, v6

    .line 803
    goto :goto_0

    .line 799
    .restart local v3       #r:Landroid/content/res/Resources;
    .restart local v4       #resid:I
    .restart local v5       #resourceName:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 801
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #resid:I
    .end local v5           #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method public static final getDisplayMailLabelForId(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 12
    .parameter "context"
    .parameter "mailId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 907
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 908
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 909
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "person"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "label"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 911
    .local v6, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 912
    .local v10, result:Ljava/lang/CharSequence;
    const-wide/16 v8, 0x0

    .line 913
    .local v8, person:J
    const/4 v11, 0x0

    .line 914
    .local v11, type:I
    const/4 v7, 0x0

    .line 915
    .local v7, label:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 916
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 918
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 919
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 921
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 922
    const/4 v6, 0x0

    .line 924
    :cond_1
    invoke-static {p0, p1, p2, v11, v7}, Landroid/provider/HtcUnionContact;->getDisplayMailLabelForId(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public static final getDisplayMailLabelForId(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"
    .parameter "mailId"
    .parameter "type"
    .parameter "label"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 882
    const/4 v0, 0x0

    .line 883
    .local v0, extra_group:I
    if-gez p3, :cond_0

    .line 884
    const/4 p3, 0x1

    .line 888
    :cond_0
    const/16 v2, 0x3e8

    if-ge p3, v2, :cond_2

    .line 889
    const/4 v0, 0x0

    .line 894
    :goto_0
    const/4 v1, 0x0

    .line 895
    .local v1, result:Ljava/lang/CharSequence;
    if-eq v0, v3, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 896
    :cond_1
    invoke-static {p0, p3, p4}, Landroid/provider/HtcUnionContact;->getDisplayExchangeMailLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 901
    :goto_1
    return-object v1

    .line 892
    .end local v1           #result:Ljava/lang/CharSequence;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 899
    .restart local v1       #result:Ljava/lang/CharSequence;
    :cond_3
    invoke-static {p0, v3, p3, p4}, Landroid/provider/Contacts$ContactMethods;->getDisplayLabel(Landroid/content/Context;IILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1
.end method

.method public static final getDisplayPhoneLabelForId(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 13
    .parameter "context"
    .parameter "phoneId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 810
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 811
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "person"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "label"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 813
    .local v6, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 814
    .local v11, result:Ljava/lang/CharSequence;
    const-wide/16 v9, 0x0

    .line 815
    .local v9, person:J
    const/4 v12, 0x0

    .line 816
    .local v12, type:I
    const/4 v8, 0x0

    .line 817
    .local v8, label:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 818
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v9, v2

    .line 820
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 821
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 823
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 824
    const/4 v6, 0x0

    .line 826
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v9, v2

    if-nez v2, :cond_2

    .line 827
    const/4 v2, 0x0

    .line 845
    :goto_0
    return-object v2

    .line 829
    :cond_2
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 830
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "extra_group"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 831
    const/4 v7, 0x0

    .line 832
    .local v7, extra_group:I
    if-eqz v6, :cond_4

    .line 833
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 834
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 836
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 839
    :cond_4
    const/4 v2, 0x1

    if-eq v7, v2, :cond_5

    const/4 v2, 0x2

    if-ne v7, v2, :cond_6

    .line 840
    :cond_5
    invoke-static {p0, v12, v8}, Landroid/provider/HtcUnionContact;->getDisplayHtcPhoneLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    :goto_1
    move-object v2, v11

    .line 845
    goto :goto_0

    .line 843
    :cond_6
    invoke-static {p0, v12, v8}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_1
.end method

.method public static getFacebookSquareBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "bmSrc"
    .parameter "nSize"
    .parameter "bmFacebookIcon"

    .prologue
    .line 110
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-nez p2, :cond_1

    .line 111
    :cond_0
    const/4 v1, 0x0

    .line 141
    :goto_0
    return-object v1

    .line 113
    :cond_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 114
    .local v1, bmDst:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    .local v2, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 117
    .local v8, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 118
    .local v7, nSrcH:I
    if-ne v8, v7, :cond_2

    .line 119
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 137
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 138
    .local v4, nFW:I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 139
    .local v3, nFH:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    sub-int v12, p1, v3

    invoke-direct {v10, v11, v12, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p2, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 122
    .end local v3           #nFH:I
    .end local v4           #nFW:I
    :cond_2
    if-le v8, v7, :cond_3

    const/4 v0, 0x1

    .line 123
    .local v0, bSrcLandscape:Z
    :goto_2
    if-eqz v0, :cond_4

    .line 125
    sub-int v9, v8, v7

    div-int/lit8 v5, v9, 0x2

    .line 126
    .local v5, nOffset:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    add-int v11, v5, v7

    invoke-direct {v9, v5, v10, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 122
    .end local v0           #bSrcLandscape:Z
    .end local v5           #nOffset:I
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 130
    .restart local v0       #bSrcLandscape:Z
    :cond_4
    sub-int v9, v7, v8

    div-int/lit8 v5, v9, 0x2

    .line 131
    .restart local v5       #nOffset:I
    const-wide v9, 0x3feb333333333333L

    int-to-double v11, v5

    mul-double/2addr v9, v11

    double-to-int v6, v9

    .line 132
    .local v6, nOffsetFacebook:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    add-int v11, v6, v8

    invoke-direct {v9, v10, v6, v8, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public static getMonthNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "monthText"

    .prologue
    const/4 v0, 0x0

    .line 288
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 289
    const-string v1, "JAN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 291
    :cond_1
    const-string v1, "FEB"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    :cond_2
    const-string v1, "MAR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    const/4 v0, 0x2

    goto :goto_0

    .line 295
    :cond_3
    const-string v1, "APR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 296
    const/4 v0, 0x3

    goto :goto_0

    .line 297
    :cond_4
    const-string v1, "MAY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 298
    const/4 v0, 0x4

    goto :goto_0

    .line 299
    :cond_5
    const-string v1, "JUN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 300
    const/4 v0, 0x5

    goto :goto_0

    .line 301
    :cond_6
    const-string v1, "JUL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 302
    const/4 v0, 0x6

    goto :goto_0

    .line 303
    :cond_7
    const-string v1, "AUG"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 304
    const/4 v0, 0x7

    goto :goto_0

    .line 305
    :cond_8
    const-string v1, "SEP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 306
    const/16 v0, 0x8

    goto :goto_0

    .line 307
    :cond_9
    const-string v1, "OCT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 308
    const/16 v0, 0x9

    goto :goto_0

    .line 309
    :cond_a
    const-string v1, "NOV"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 310
    const/16 v0, 0xa

    goto :goto_0

    .line 311
    :cond_b
    const-string v1, "DEC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    const/16 v0, 0xb

    goto :goto_0
.end method

.method public static getPersonNameAndAddressFromDeviceMailRowId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 12
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outAddressBuf"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 738
    const/4 v8, 0x0

    .line 739
    .local v8, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 740
    .local v6, address:Ljava/lang/String;
    const/4 v9, 0x0

    .line 741
    .local v9, person:I
    sget-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 742
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "person"

    aput-object v0, v2, v10

    const-string v0, "data"

    aput-object v0, v2, v11

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 743
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 745
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 747
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 748
    if-gtz v9, :cond_1

    move v0, v10

    .line 765
    :goto_0
    return v0

    .line 751
    :cond_1
    const/4 v7, 0x0

    .line 752
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v9

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 753
    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v0, "name"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 754
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 755
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 757
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 758
    const/4 v7, 0x0

    .line 759
    if-eqz p3, :cond_3

    .line 760
    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    :cond_3
    if-eqz p2, :cond_4

    .line 763
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    move v0, v11

    .line 765
    goto :goto_0
.end method

.method public static getPersonNameAndNumberFromDevicePhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 12
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outNumberBuf"

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 676
    const/4 v7, 0x0

    .line 677
    .local v7, name:Ljava/lang/String;
    const/4 v8, 0x0

    .line 678
    .local v8, number:Ljava/lang/String;
    const/4 v9, 0x0

    .line 679
    .local v9, person:I
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 680
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v11

    const-string v0, "data1"

    aput-object v0, v2, v10

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 682
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 684
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 686
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 689
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 692
    :cond_1
    if-eqz p3, :cond_2

    if-eqz v8, :cond_2

    .line 693
    invoke-virtual {p3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v7, :cond_3

    .line 696
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    :cond_3
    return v10

    .line 689
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPersonNameAndNumberFromSIMPhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z
    .locals 1
    .parameter "resolver"
    .parameter "id"
    .parameter "outNameBuf"
    .parameter "outNumberBuf"

    .prologue
    .line 708
    invoke-static {p0, p1, p2, p3}, Landroid/provider/HtcUnionContact;->getPersonNameAndNumberFromDevicePhoneId(Landroid/content/ContentResolver;ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)Z

    move-result v0

    return v0
.end method

.method public static getStarredInAnrdoidGroupContentValues(Landroid/content/ContentResolver;)Ljava/util/ArrayList;
    .locals 13
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 936
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string/jumbo v3, "name=?"

    .line 938
    .local v3, whereString:Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "Starred in Android"

    aput-object v0, v4, v9

    .line 940
    .local v4, whereArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string/jumbo v0, "name"

    aput-object v0, v2, v10

    const-string v0, "_sync_id"

    aput-object v0, v2, v11

    const-string v0, "_sync_account"

    aput-object v0, v2, v12

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 943
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 944
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 946
    .local v8, result:Landroid/content/ContentValues;
    const-string v0, "_id"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 947
    const-string/jumbo v0, "name"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v0, "_sync_id"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v0, "_sync_account"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 952
    .end local v8           #result:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 954
    :cond_1
    return-object v7
.end method

.method public static insertFacebookEvent(Landroid/content/ContentResolver;JILjava/lang/String;)Landroid/net/Uri;
    .locals 16
    .parameter "mResolver"
    .parameter "personId"
    .parameter "type"
    .parameter "eventDate"

    .prologue
    .line 149
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 221
    :try_start_0
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v13, "/"

    move-object/from16 v0, p4

    invoke-direct {v8, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v8, st:Ljava/util/StringTokenizer;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 225
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, day:Ljava/lang/String;
    move-object v7, v4

    .local v7, month:Ljava/lang/Object;
    move-object v12, v4

    .line 226
    .local v12, year:Ljava/lang/Object;
    const/4 v13, 0x3

    if-ne v2, v13, :cond_4

    .line 227
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, month:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 248
    .end local v7           #month:Ljava/lang/String;
    .end local v12           #year:Ljava/lang/Object;
    :cond_0
    :goto_0
    const/4 v6, 0x1

    .line 249
    .local v6, m:I
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 250
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    .line 252
    :cond_1
    const/4 v3, 0x1

    .line 253
    .local v3, d:I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 254
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 256
    :cond_2
    const/16 v11, 0x7b2

    .line 257
    .local v11, y:I
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 258
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 260
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 261
    .local v1, calendar:Ljava/util/Calendar;
    invoke-virtual {v1, v11, v6, v3}, Ljava/util/Calendar;->set(III)V

    .line 262
    const/16 v13, 0xb

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 263
    const/16 v13, 0xe

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 264
    const/16 v13, 0xd

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 265
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Ljava/util/Calendar;->set(II)V

    .line 267
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v10, values:Landroid/content/ContentValues;
    const-string/jumbo v13, "type"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v13, "checked"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string/jumbo v13, "person"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 271
    const-string v13, "event_id"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string/jumbo v13, "start_time"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    const-string v13, "end_time"

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    const-string/jumbo v13, "source"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    sget-object v13, Landroid/provider/Contacts$EventsMap;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 276
    .local v9, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 282
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v2           #count:I
    .end local v3           #d:I
    .end local v4           #day:Ljava/lang/String;
    .end local v6           #m:I
    .end local v8           #st:Ljava/util/StringTokenizer;
    .end local v9           #uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #y:I
    :goto_1
    return-object v9

    .line 230
    .restart local v2       #count:I
    .restart local v4       #day:Ljava/lang/String;
    .local v7, month:Ljava/lang/Object;
    .restart local v8       #st:Ljava/util/StringTokenizer;
    .restart local v12       #year:Ljava/lang/Object;
    :cond_4
    const/4 v13, 0x2

    if-ne v2, v13, :cond_0

    .line 231
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, month:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 278
    .end local v2           #count:I
    .end local v4           #day:Ljava/lang/String;
    .end local v7           #month:Ljava/lang/String;
    .end local v8           #st:Ljava/util/StringTokenizer;
    .end local v12           #year:Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 279
    .local v5, e:Ljava/lang/Throwable;
    const-string v13, "HtcUnionContact"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed at parsing birthday date "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v5           #e:Ljava/lang/Throwable;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method
