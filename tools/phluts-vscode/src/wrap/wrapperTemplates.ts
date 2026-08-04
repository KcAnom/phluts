import type { WidgetCatalogEntry } from '../generated/widgetCatalog';

export type ChildMode = 'child' | 'children';

export interface WrapperTemplate {
  wrapperName: string;
  title: string;
  childMode: ChildMode;
  beforeChildArgs: string[];
}

export const PRESET_WRAPPERS: ReadonlyArray<WrapperTemplate> = [
  {
    wrapperName: 'PhlutsContainer',
    title: 'Wrap with PhlutsContainer',
    childMode: 'child',
    beforeChildArgs: [],
  },
  {
    wrapperName: 'PhlutsPadding',
    title: 'Wrap with PhlutsPadding',
    childMode: 'child',
    beforeChildArgs: ['padding: PhlutsEdgeInsets.all(8)'],
  },
  {
    wrapperName: 'PhlutsCenter',
    title: 'Wrap with PhlutsCenter',
    childMode: 'child',
    beforeChildArgs: [],
  },
  {
    wrapperName: 'PhlutsAlign',
    title: 'Wrap with PhlutsAlign',
    childMode: 'child',
    beforeChildArgs: ['alignment: PhlutsAlignmentDirectional.center'],
  },
  {
    wrapperName: 'PhlutsSizedBox',
    title: 'Wrap with PhlutsSizedBox',
    childMode: 'child',
    beforeChildArgs: [],
  },
  {
    wrapperName: 'PhlutsExpanded',
    title: 'Wrap with PhlutsExpanded',
    childMode: 'child',
    beforeChildArgs: [],
  },
];

export const PRESET_WRAPPER_NAMES = PRESET_WRAPPERS.map(
  (template) => template.wrapperName,
);

/** Placeholder template for "Wrap with Phluts widget" — no pop-up; user types the class name inline. */
export const CUSTOM_WIDGET_PLACEHOLDER_TEMPLATE: WrapperTemplate = {
  wrapperName: 'PhlutsWidget',
  title: 'Wrap with Phluts widget',
  childMode: 'child',
  beforeChildArgs: [],
};

export function templateFromWidgetCatalog(
  widget: WidgetCatalogEntry,
): WrapperTemplate | undefined {
  if (widget.supportsChild) {
    return {
      wrapperName: widget.className,
      title: `Wrap with ${widget.className}`,
      childMode: 'child',
      beforeChildArgs: [],
    };
  }

  if (widget.supportsChildren) {
    return {
      wrapperName: widget.className,
      title: `Wrap with ${widget.className}`,
      childMode: 'children',
      beforeChildArgs: [],
    };
  }

  return undefined;
}

export function getPresetWrapper(wrapperName: string): WrapperTemplate | undefined {
  return PRESET_WRAPPERS.find((wrapper) => wrapper.wrapperName === wrapperName);
}
