.class Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$2;
.super Ljava/lang/Object;
.source "QSTiles.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$2;->this$0:Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;)I
    .locals 2
    .param p1, "lhs"    # Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;
    .param p2, "rhs"    # Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;

    .prologue
    .line 305
    iget-object v0, p1, Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    iget-object v1, p2, Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 302
    check-cast p1, Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/flerovium/settings/cyanogenmod/qs/QSTiles$ChooseNewTileFragment$2;->compare(Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;Lorg/flerovium/settings/cyanogenmod/qs/QSTileHolder;)I

    move-result v0

    return v0
.end method
