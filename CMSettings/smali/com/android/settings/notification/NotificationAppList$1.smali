.class final Lorg/flerovium/settings/notification/NotificationAppList$1;
.super Ljava/lang/Object;
.source "NotificationAppList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/notification/NotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/flerovium/settings/notification/NotificationAppList$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lorg/flerovium/settings/notification/NotificationAppList$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lorg/flerovium/settings/notification/NotificationAppList$AppRow;Lorg/flerovium/settings/notification/NotificationAppList$AppRow;)I
    .locals 3
    .param p1, "lhs"    # Lorg/flerovium/settings/notification/NotificationAppList$AppRow;
    .param p2, "rhs"    # Lorg/flerovium/settings/notification/NotificationAppList$AppRow;

    .prologue
    .line 371
    iget-object v0, p0, Lorg/flerovium/settings/notification/NotificationAppList$1;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lorg/flerovium/settings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lorg/flerovium/settings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 367
    check-cast p1, Lorg/flerovium/settings/notification/NotificationAppList$AppRow;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/flerovium/settings/notification/NotificationAppList$AppRow;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/flerovium/settings/notification/NotificationAppList$1;->compare(Lorg/flerovium/settings/notification/NotificationAppList$AppRow;Lorg/flerovium/settings/notification/NotificationAppList$AppRow;)I

    move-result v0

    return v0
.end method
