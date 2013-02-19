.class public final Lcom/htc/provider/HtcContactsContract$Groups;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Groups"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/HtcContactsContract$Groups$Thumbnail;,
        Lcom/htc/provider/HtcContactsContract$Groups$Favorite;
    }
.end annotation


# static fields
.field public static final CONTENT_ITEM_NAME_SYMMARY_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/group_name_summary"

.field public static final CONTENT_NAME_LIST_URI:Landroid/net/Uri; = null

.field public static final CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_GROUP_COWORK:Ljava/lang/String; = "Coworkers"

.field public static final DEFAULT_GROUP_COWORK_DISPLAY_NAME:Ljava/lang/String; = "Coworkers"

.field public static final DEFAULT_GROUP_COWORK_SYSTEM_ID:Ljava/lang/String; = "Coworkers"

.field public static final DEFAULT_GROUP_FAMILY:Ljava/lang/String; = "Family"

.field public static final DEFAULT_GROUP_FAMILY_DISPLAY_NAME:Ljava/lang/String; = "Family"

.field public static final DEFAULT_GROUP_FAMILY_SYSTEM_ID:Ljava/lang/String; = "Family"

.field public static final DEFAULT_GROUP_FAVORITE:Ljava/lang/String; = "Favorite_8656150684447252476_6727701920173350445"

.field public static final DEFAULT_GROUP_FAVORITE_CHECKNAME:Ljava/lang/String; = "Favorite_8656150684447252476_6727701920173350445"

.field public static final DEFAULT_GROUP_FAVORITE_DISPLAY_NAME:Ljava/lang/String; = "Favorites"

.field public static final DEFAULT_GROUP_FREQUENT_CONTACT:Ljava/lang/String; = "Frequent Contacts"

.field public static final DEFAULT_GROUP_FRIEND:Ljava/lang/String; = "Friends"

.field public static final DEFAULT_GROUP_FRIEND_DISPLAY_NAME:Ljava/lang/String; = "Friends"

.field public static final DEFAULT_GROUP_FRIEND_SYSTEM_ID:Ljava/lang/String; = "Friends"

.field public static final DEFAULT_GROUP_HTC_FAVORITE:Ljava/lang/String; = "HTC Favorite"

.field public static final DEFAULT_GROUP_IMPORTANCE:Ljava/lang/String; = "VIP"

.field public static final DEFAULT_GROUP_IMPORTANCE_CHECKNAME:Ljava/lang/String; = "VIP"

.field public static final DEFAULT_GROUP_IMPORTANCE_DISPLAY_NAME:Ljava/lang/String; = "VIP"

.field public static final DELETE_CONTENT_URI:Landroid/net/Uri; = null

.field public static final DISPLAY_TITLE:Ljava/lang/String; = "display_title"

.field public static final EXTRA_GROUP_NAME:Ljava/lang/String; = "GROUP_NAME"

.field public static final GROUP_ANDROID_STARRED:Ljava/lang/String; = "Starred in Android"

.field public static final GROUP_PHOTO:Ljava/lang/String; = "photo"

.field public static final GROUP_RAW_URI:Landroid/net/Uri; = null

.field public static final IS_ATTRIBUTE_SET:Ljava/lang/String; = "is_attribute_set"

.field public static final IS_HIDE:Ljava/lang/String; = "is_hide"

.field public static final MAX_SHOWN_FREQUENT_CONTACTS:I = 0x12

.field public static final MEMBER_CONTENT_URI:Landroid/net/Uri; = null

.field public static final ORDER_GROUP_COWORKERS:I = 0x14

.field public static final ORDER_GROUP_FAMILY:I = 0x28

.field public static final ORDER_GROUP_FAVORITES:I = -0x5

.field public static final ORDER_GROUP_FREQUENT_CONTACT:I = -0x1e

.field public static final ORDER_GROUP_FRIENDS:I = 0x1e

.field public static final ORDER_GROUP_IMPORTANCE:I = 0x32

.field public static final SORT_ORDER:Ljava/lang/String; = "sortorder"

.field public static final SYSTEM_GROUP_MYCONTACTS:Ljava/lang/String; = "System Group: My Contacts"

.field public static final SYSTEM_GROUP_MYCONTACTS_SYSTEM_ID:Ljava/lang/String; = "Contacts"

.field public static final SYSTEM_GROUP_TITLE_MYCONTACTS:Ljava/lang/String; = "My Contacts"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2019
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_device"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->DELETE_CONTENT_URI:Landroid/net/Uri;

    .line 2025
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_member"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->MEMBER_CONTENT_URI:Landroid/net/Uri;

    .line 2031
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_name_summary"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri;

    .line 2037
    sget-object v0, Lcom/htc/provider/HtcContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_name_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->CONTENT_NAME_LIST_URI:Landroid/net/Uri;

    .line 2040
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups_raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->GROUP_RAW_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1997
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultGroupIconResource(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 2262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is deprecated on S4.0 because of CC res are no longer available!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDefaultGroupIconResourceMap()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2301
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method is deprecated on S4.0 because of CC res are no longer available!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getDefaultGroupOrder(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 2150
    if-nez p0, :cond_1

    .line 2151
    const/4 v0, 0x0

    .line 2178
    :cond_0
    :goto_0
    return v0

    .line 2153
    :cond_1
    const/4 v0, 0x0

    .line 2154
    .local v0, result:I
    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2155
    const/4 v0, -0x5

    goto :goto_0

    .line 2157
    :cond_2
    const-string v1, "VIP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2158
    const/16 v0, 0x32

    goto :goto_0

    .line 2160
    :cond_3
    const-string v1, "Family"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2161
    const/16 v0, 0x28

    goto :goto_0

    .line 2163
    :cond_4
    const-string v1, "Friends"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2164
    const/16 v0, 0x1e

    goto :goto_0

    .line 2166
    :cond_5
    const-string v1, "Coworkers"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2167
    const/16 v0, 0x14

    goto :goto_0

    .line 2169
    :cond_6
    const-string v1, "Starred in Android"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2170
    const/16 v0, -0xa

    goto :goto_0

    .line 2172
    :cond_7
    const-string v1, "System Group: My Contacts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2173
    const/16 v0, -0x14

    goto :goto_0

    .line 2175
    :cond_8
    const-string v1, "Frequent Contacts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2176
    const/16 v0, -0x1e

    goto :goto_0
.end method

.method public static getOrCreateGoogleSystemMyContactGroup(Landroid/content/ContentResolver;Landroid/accounts/Account;)J
    .locals 16
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 2194
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2195
    :cond_0
    const-wide/16 v12, -0x1

    .line 2253
    :cond_1
    :goto_0
    return-wide v12

    .line 2198
    :cond_2
    const-wide/16 v12, -0x1

    .line 2199
    .local v12, id:J
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "sourceid"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "notes"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "system_id"

    aput-object v2, v3, v1

    .line 2205
    .local v3, projection:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "My Contacts"

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "auto_add"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "group_is_read_only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2211
    .local v4, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "sourceid DESC "

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2214
    .local v7, c:Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 2215
    .local v10, counts:I
    const-wide/16 v8, -0x1

    .line 2216
    .local v8, checkId:J
    if-eqz v7, :cond_6

    .line 2217
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 2219
    :cond_3
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2220
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2221
    .local v15, sourceId:Ljava/lang/String;
    const-wide/16 v1, -0x1

    cmp-long v1, v8, v1

    if-nez v1, :cond_4

    .line 2222
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 2224
    :cond_4
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2225
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 2231
    .end local v15           #sourceId:Ljava/lang/String;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2235
    :cond_6
    move-wide v12, v8

    .line 2236
    if-gez v10, :cond_7

    .line 2237
    const-wide/16 v12, -0x1

    goto/16 :goto_0

    .line 2231
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2239
    :cond_7
    if-nez v10, :cond_1

    .line 2241
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2242
    .local v14, newGroup:Landroid/content/ContentValues;
    const-string v1, "title"

    const-string v2, "My Contacts"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    const-string v1, "account_name"

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    const-string v1, "account_type"

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    const-string v1, "group_visible"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    const-string v1, "auto_add"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2248
    const-string v1, "group_is_read_only"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 2251
    .local v11, groupUri:Landroid/net/Uri;
    invoke-static {v11}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    goto/16 :goto_0
.end method

.method public static getViewFavoriteIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 2338
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.LIST_STARRED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2339
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public static final getViewGroupIntentByName(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "name"

    .prologue
    .line 2352
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2353
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GROUP_NAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2354
    return-object v0
.end method

.method public static final isDefaultGroupName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 2137
    if-nez p0, :cond_1

    .line 2145
    :cond_0
    :goto_0
    return v0

    .line 2140
    :cond_1
    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "VIP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Family"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Friends"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Coworkers"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Frequent Contacts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2143
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isDefaultGroupName(Ljava/lang/String;I)Z
    .locals 3
    .parameter "name"
    .parameter "groupIsReadOnly"

    .prologue
    const/4 v1, 0x1

    .line 2116
    const/4 v0, 0x0

    .line 2117
    .local v0, firstResult:Z
    if-nez p0, :cond_0

    .line 2118
    const/4 v0, 0x0

    .line 2120
    :cond_0
    const-string v2, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VIP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Family"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Friends"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Coworkers"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Frequent Contacts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2123
    :cond_1
    const/4 v0, 0x1

    .line 2126
    :cond_2
    if-eqz v0, :cond_3

    if-ne p1, v1, :cond_3

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final showDisplayGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2325
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This API is replaced by an API in com.htc.contacts.ContactUtility"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
