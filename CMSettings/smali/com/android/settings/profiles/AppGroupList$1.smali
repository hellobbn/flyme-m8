.class Lorg/flerovium/settings/profiles/AppGroupList$1;
.super Ljava/lang/Object;
.source "AppGroupList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/profiles/AppGroupList;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/profiles/AppGroupList;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/profiles/AppGroupList;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lorg/flerovium/settings/profiles/AppGroupList$1;->this$0:Lorg/flerovium/settings/profiles/AppGroupList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lorg/flerovium/settings/profiles/AppGroupList$1;->this$0:Lorg/flerovium/settings/profiles/AppGroupList;

    # invokes: Lorg/flerovium/settings/profiles/AppGroupList;->addAppGroup()V
    invoke-static {v0}, Lorg/flerovium/settings/profiles/AppGroupList;->access$000(Lorg/flerovium/settings/profiles/AppGroupList;)V

    .line 85
    return-void
.end method