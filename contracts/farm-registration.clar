;; Farm Registration Contract
;; This contract validates legitimate agricultural producers

(define-data-var last-farm-id uint u0)

(define-map farms
  { farm-id: uint }
  {
    owner: principal,
    name: (string-ascii 100),
    location: (string-ascii 100),
    registration-date: uint,
    is-active: bool
  }
)

(define-public (register-farm (name (string-ascii 100)) (location (string-ascii 100)))
  (let
    (
      (new-id (+ (var-get last-farm-id) u1))
    )
    (asserts! (is-eq tx-sender contract-caller) (err u403))
    (var-set last-farm-id new-id)
    (map-set farms
      { farm-id: new-id }
      {
        owner: tx-sender,
        name: name,
        location: location,
        registration-date: block-height,
        is-active: true
      }
    )
    (ok new-id)
  )
)

(define-read-only (get-farm (farm-id uint))
  (map-get? farms { farm-id: farm-id })
)

(define-public (update-farm-status (farm-id uint) (is-active bool))
  (let
    (
      (farm (unwrap! (map-get? farms { farm-id: farm-id }) (err u404)))
    )
    (asserts! (is-eq (get owner farm) tx-sender) (err u403))
    (map-set farms
      { farm-id: farm-id }
      (merge farm { is-active: is-active })
    )
    (ok true)
  )
)

(define-read-only (get-farm-count)
  (var-get last-farm-id)
)

