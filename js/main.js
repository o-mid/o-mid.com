(() => {
  const tabs = [...document.querySelectorAll(".exp-tab")];
  const panels = {
    blocklabs: document.getElementById("exp-blocklabs"),
    codetech: document.getElementById("exp-codetech"),
    srico: document.getElementById("exp-srico"),
  };

  tabs.forEach((tab) => {
    tab.addEventListener("click", () => {
      const key = tab.dataset.exp;
      tabs.forEach((t) => {
        t.classList.toggle("active", t === tab);
        t.setAttribute("aria-selected", t === tab ? "true" : "false");
      });
      Object.entries(panels).forEach(([id, panel]) => {
        if (!panel) return;
        panel.hidden = id !== key;
      });
    });
  });

  const navLinks = [...document.querySelectorAll(".nav a[data-section]")];
  const sections = navLinks
    .map((link) => document.getElementById(link.dataset.section))
    .filter(Boolean);

  const setActive = () => {
    const y = window.scrollY + 120;
    let current = sections[0]?.id ?? "home";
    for (const section of sections) {
      if (section.offsetTop <= y) current = section.id;
    }
    navLinks.forEach((link) => {
      link.classList.toggle("active", link.dataset.section === current);
    });
  };

  setActive();
  window.addEventListener("scroll", setActive, { passive: true });
})();
