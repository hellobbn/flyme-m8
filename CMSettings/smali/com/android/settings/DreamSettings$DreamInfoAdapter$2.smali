.class Lorg/flerovium/settings/DreamSettings$DreamInfoAdapter$2;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/DreamSettings$DreamInfoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/flerovium/settings/DreamSettings$DreamInfoAdapter;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/DreamSettings$DreamInfoAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lorg/flerovium/settings/DreamSettings$DreamInfoAdapter$2;->this$1:Lorg/flerovium/settings/DreamSettings$DreamInfoAdapter;

    iput-object p2, p0, Lorg/flerovium/settings/DreamSettings$DreamInfoAdapter$2;->val$row:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 326
    iget-object v0, p0, Lorg/flerovium/settings/DreamSettings$DreamInfoAdapter$2;->this$1:Lorg/flerovium/settings/DreamSettings$DreamInfoAdapter;

    iget-object v0, v0, Lorg/flerovium/settings/DreamSettings$DreamInfoAdapter;->this$0:Lorg/flerovium/settings/DreamSettings;

    # getter for: Lorg/flerovium/settings/DreamSettings;->mBackend:Lorg/flerovium/settings/DreamBackend;
    invoke-static {v0}, Lorg/flerovium/settings/DreamSettings;->access$100(Lorg/flerovium/settings/DreamSettings;)Lorg/flerovium/settings/DreamBackend;

    move-result-object v1

    iget-object v0, p0, Lorg/flerovium/settings/DreamSettings$DreamInfoAdapter$2;->val$row:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/DreamBackend$DreamInfo;

    invoke-virtual {v1, v0}, Lorg/flerovium/settings/DreamBackend;->launchSettings(Lorg/flerovium/settings/DreamBackend$DreamInfo;)V

    .line 327
    return-void
.end method
