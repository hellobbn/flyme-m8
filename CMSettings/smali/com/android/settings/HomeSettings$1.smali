.class Lorg/flerovium/settings/HomeSettings$1;
.super Ljava/lang/Object;
.source "HomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/HomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/HomeSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/HomeSettings;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lorg/flerovium/settings/HomeSettings$1;->this$0:Lorg/flerovium/settings/HomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 101
    .local v0, "index":I
    iget-object v2, p0, Lorg/flerovium/settings/HomeSettings$1;->this$0:Lorg/flerovium/settings/HomeSettings;

    # getter for: Lorg/flerovium/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/flerovium/settings/HomeSettings;->access$200(Lorg/flerovium/settings/HomeSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/flerovium/settings/HomeSettings$HomeAppPreference;

    .line 102
    .local v1, "pref":Lorg/flerovium/settings/HomeSettings$HomeAppPreference;
    iget-boolean v2, v1, Lorg/flerovium/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-nez v2, :cond_0

    .line 103
    iget-object v2, p0, Lorg/flerovium/settings/HomeSettings$1;->this$0:Lorg/flerovium/settings/HomeSettings;

    invoke-virtual {v2, v1}, Lorg/flerovium/settings/HomeSettings;->makeCurrentHome(Lorg/flerovium/settings/HomeSettings$HomeAppPreference;)V

    .line 105
    :cond_0
    return-void
.end method
