.class Lorg/flerovium/settings/profiles/ProfilesSettings$2;
.super Ljava/lang/Object;
.source "ProfilesSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/profiles/ProfilesSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/profiles/ProfilesSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/profiles/ProfilesSettings;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lorg/flerovium/settings/profiles/ProfilesSettings$2;->this$0:Lorg/flerovium/settings/profiles/ProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/flerovium/settings/profiles/ProfilesSettings$2;->this$0:Lorg/flerovium/settings/profiles/ProfilesSettings;

    # invokes: Lorg/flerovium/settings/profiles/ProfilesSettings;->addProfile()V
    invoke-static {v0}, Lorg/flerovium/settings/profiles/ProfilesSettings;->access$100(Lorg/flerovium/settings/profiles/ProfilesSettings;)V

    .line 136
    return-void
.end method
