.class Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$1;
.super Landroid/os/Handler;
.source "PackageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$1;->this$0:Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$PackageItem;

    .line 58
    .local v1, "item":Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$PackageItem;
    iget-object v2, p0, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$1;->this$0:Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;

    # getter for: Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;->mInstalledPackages:Ljava/util/List;
    invoke-static {v2}, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;->access$000(Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 59
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 60
    iget-object v2, p0, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$1;->this$0:Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;

    # getter for: Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;->mInstalledPackages:Ljava/util/List;
    invoke-static {v2}, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;->access$000(Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;)Ljava/util/List;

    move-result-object v2

    neg-int v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    :goto_0
    iget-object v2, p0, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$1;->this$0:Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;

    invoke-virtual {v2}, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;->notifyDataSetChanged()V

    .line 65
    return-void

    .line 62
    :cond_0
    iget-object v2, p0, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$1;->this$0:Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;

    # getter for: Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;->mInstalledPackages:Ljava/util/List;
    invoke-static {v2}, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;->access$000(Lorg/flerovium/settings/cyanogenmod/PackageListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$PackageItem;

    # getter for: Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$PackageItem;->activityTitles:Ljava/util/TreeSet;
    invoke-static {v2}, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$PackageItem;->access$100(Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v2

    # getter for: Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$PackageItem;->activityTitles:Ljava/util/TreeSet;
    invoke-static {v1}, Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$PackageItem;->access$100(Lorg/flerovium/settings/cyanogenmod/PackageListAdapter$PackageItem;)Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
