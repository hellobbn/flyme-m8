.class Lorg/flerovium/settings/applications/ProtectedAppsActivity$2;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/applications/ProtectedAppsActivity;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/applications/ProtectedAppsActivity;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lorg/flerovium/settings/applications/ProtectedAppsActivity$2;->this$0:Lorg/flerovium/settings/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 452
    .local v3, "position":I
    iget-object v6, p0, Lorg/flerovium/settings/applications/ProtectedAppsActivity$2;->this$0:Lorg/flerovium/settings/applications/ProtectedAppsActivity;

    # getter for: Lorg/flerovium/settings/applications/ProtectedAppsActivity;->mAppsAdapter:Lorg/flerovium/settings/applications/ProtectedAppsActivity$AppsAdapter;
    invoke-static {v6}, Lorg/flerovium/settings/applications/ProtectedAppsActivity;->access$000(Lorg/flerovium/settings/applications/ProtectedAppsActivity;)Lorg/flerovium/settings/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/flerovium/settings/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/flerovium/settings/applications/ProtectedAppsActivity$AppEntry;

    iget-object v0, v6, Lorg/flerovium/settings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    .line 453
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v1, "componentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v6, p0, Lorg/flerovium/settings/applications/ProtectedAppsActivity$2;->this$0:Lorg/flerovium/settings/applications/ProtectedAppsActivity;

    # invokes: Lorg/flerovium/settings/applications/ProtectedAppsActivity;->getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z
    invoke-static {v6, v0}, Lorg/flerovium/settings/applications/ProtectedAppsActivity;->access$400(Lorg/flerovium/settings/applications/ProtectedAppsActivity;Landroid/content/ComponentName;)Z

    move-result v4

    .line 457
    .local v4, "state":Z
    new-instance v2, Lorg/flerovium/settings/applications/ProtectedAppsActivity$AppProtectList;

    iget-object v6, p0, Lorg/flerovium/settings/applications/ProtectedAppsActivity$2;->this$0:Lorg/flerovium/settings/applications/ProtectedAppsActivity;

    invoke-direct {v2, v6, v1, v4}, Lorg/flerovium/settings/applications/ProtectedAppsActivity$AppProtectList;-><init>(Lorg/flerovium/settings/applications/ProtectedAppsActivity;Ljava/util/ArrayList;Z)V

    .line 458
    .local v2, "list":Lorg/flerovium/settings/applications/ProtectedAppsActivity$AppProtectList;
    new-instance v5, Lorg/flerovium/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    iget-object v6, p0, Lorg/flerovium/settings/applications/ProtectedAppsActivity$2;->this$0:Lorg/flerovium/settings/applications/ProtectedAppsActivity;

    iget-object v7, p0, Lorg/flerovium/settings/applications/ProtectedAppsActivity$2;->this$0:Lorg/flerovium/settings/applications/ProtectedAppsActivity;

    invoke-direct {v5, v6, v7}, Lorg/flerovium/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;-><init>(Lorg/flerovium/settings/applications/ProtectedAppsActivity;Landroid/content/Context;)V

    .line 460
    .local v5, "task":Lorg/flerovium/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
    const/4 v6, 0x1

    new-array v6, v6, [Lorg/flerovium/settings/applications/ProtectedAppsActivity$AppProtectList;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v6}, Lorg/flerovium/settings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 461
    return-void
.end method
