.class public Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;
.super Landroid/content/ContentProvider;
.source "LoaderThrottle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LoaderThrottle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleProvider"
.end annotation


# static fields
.field private static final MAIN:I = 0x1

.field private static final MAIN_ID:I = 0x2


# instance fields
.field private final mNotesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenHelper:Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 184
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 186
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 187
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "io.appium.android.apis.app.LoaderThrottle"

    const-string v2, "main"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "io.appium.android.apis.app.LoaderThrottle"

    const-string v2, "main/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mNotesProjectionMap:Ljava/util/HashMap;

    .line 193
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mNotesProjectionMap:Ljava/util/HashMap;

    const-string v1, "data"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 306
    iget-object v3, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mOpenHelper:Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;

    invoke-virtual {v3}, Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 311
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 329
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 314
    :pswitch_0
    const-string v3, "main"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 334
    return v0

    .line 323
    .end local v0    # "count":I
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "finalWhere":Ljava/lang/String;
    const-string v3, "main"

    invoke-virtual {v1, v3, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 326
    .restart local v0    # "count":I
    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 255
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.example.api-demos-throttle"

    .line 259
    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.example.api-demos-throttle"

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v7, 0x0

    .line 270
    iget-object v5, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 272
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    :cond_0
    if-eqz p2, :cond_2

    .line 278
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 283
    .local v4, "values":Landroid/content/ContentValues;
    :goto_0
    const-string v5, "data"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 284
    const-string v5, "data"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_1
    iget-object v5, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mOpenHelper:Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;

    invoke-virtual {v5}, Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 289
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "main"

    invoke-virtual {v0, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 292
    .local v2, "rowId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_3

    .line 293
    sget-object v5, Lio/appium/android/apis/app/LoaderThrottle$MainTable;->CONTENT_ID_URI_BASE:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 294
    .local v1, "noteUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 295
    return-object v1

    .line 280
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "noteUri":Landroid/net/Uri;
    .end local v2    # "rowId":J
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .restart local v4    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 298
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "rowId":J
    :cond_3
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to insert row into "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mOpenHelper:Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 215
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 216
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "main"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 233
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :pswitch_0
    iget-object v2, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mNotesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 237
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const-string p5, "data COLLATE LOCALIZED ASC"

    .line 241
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mOpenHelper:Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;

    invoke-virtual {v2}, Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 243
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 246
    .local v8, "c":Landroid/database/Cursor;
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 247
    return-object v8

    .line 226
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :pswitch_1
    iget-object v2, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mNotesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 227
    const-string v2, "_id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 228
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p4, v2}, Landroid/database/DatabaseUtils;->appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 230
    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 342
    iget-object v3, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mOpenHelper:Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;

    invoke-virtual {v3}, Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 346
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, p0, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 361
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 349
    :pswitch_0
    const-string v3, "main"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 366
    return v0

    .line 355
    .end local v0    # "count":I
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "finalWhere":Ljava/lang/String;
    const-string v3, "main"

    invoke-virtual {v1, v3, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 358
    .restart local v0    # "count":I
    goto :goto_0

    .line 346
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
